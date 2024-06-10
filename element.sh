#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"


# Start
ARGUMENT=$1
# Check if ARUGMENT is valid
if [[ -z $ARGUMENT ]]
  # ARGUMNET IS NULL / INVALID
  then
    echo -e "Please provide an element as an argument."

  # Otherwise, we move on!
  else

  # In order to index data from properties, have to use an inner join using atomic_number
  # First, check if ARGUMENT is atomic_number (has to be an integer)
  # If not, then have to specify symbol vs name by length of string
  if [[ -n ${ARGUMENT//[0-9]/} ]]
    # Input is not a number
    then
    # Check if input is longer than 2 characters
    if [[ ${#ARGUMENT} -gt 2 ]]
      # If so, then input is looking for a name
      then
      ATOMIC_NUM=$($PSQL "SELECT atomic_number FROM elements WHERE name='$ARGUMENT'")
      # Otherwise, check the symbols
      else
      ATOMIC_NUM=$($PSQL "SELECT atomic_number FROM elements WHERE symbol='$ARGUMENT'")  
    fi
    # Input is a number
    else
    ATOMIC_NUM=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number=$ARGUMENT")
  fi

  # Check if Atomic Number was found
  if [[ -z $ATOMIC_NUM ]]
    # If not found, then print message and EXIT
    then
    echo -e "I could not find that element in the database."
    
    else
    # If number WAS found, then we can move on
    # Locate the data required (elements and properties)
    SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number=$ATOMIC_NUM")
    NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number=$ATOMIC_NUM")

    TYPE_ID=$($PSQL "SELECT type_id FROM properties WHERE atomic_number=$ATOMIC_NUM")
    TYPE=$($PSQL "SELECT type FROM types WHERE type_id=$TYPE_ID")

    MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number=$ATOMIC_NUM")
    MP=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUM")
    BP=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUM")

    echo -e "The element with atomic number $ATOMIC_NUM is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MP celsius and a boiling point of $BP celsius."
  fi
fi
