#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ MY SALON ~~~~~\n"
echo -e "Welcome to My Salon, how can I help you?\n" 

MAIN_MENU() {
  # Display the services
  ALL_SERVICES=$($PSQL "SELECT * FROM services")
  echo "$ALL_SERVICES" | while read SID BAR SNAME
  do
    echo "$SID) $SNAME"
  done

  # What do they want?
  read SERVICE_ID_SELECTED

  # Check if input is viable
  case $SERVICE_ID_SELECTED in
    1|2|3|4|5) BOOK_MENU ;;
    *) echo -e "\nI could not find that service. What would you like today?" 
      MAIN_MENU;;
  esac
}

# Get customer name and ID
BOOK_MENU() {
# Collect phone number
echo -e "\nWhat's your phone number?"
read CUSTOMER_PHONE
# Check if number exists already, and collect customer_id
CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'" | sed -E 's/^ //g')
if [[ -z $CUSTOMER_NAME ]]
# If customer does not exist
  then
  echo -e "\nI don't have a record for that phone number, what's your name?"
  read CUSTOMER_NAME
  # Enter in the customer name and phone number to customers table
  INSERT_CUSTOMER=$($PSQL "INSERT INTO customers(name , phone) VALUES ('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
fi

# Get customer ID from customers
CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")

# Get the time
echo -e "\nWhat time would you like your cut,$CUSTOMER_NAME?"
read SERVICE_TIME
# Output the sentence
CHOICE=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED" | sed -E 's/^ //g')
echo -e "\nI have put you down for a $CHOICE at $SERVICE_TIME, $CUSTOMER_NAME."
# Insert the data to appointments table
INSERT_APP=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
}


MAIN_MENU
