#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guessing_game -t --no-align -c"

# START
echo -e "Enter your username:"
read USERNAME

# Get the name_id
NAME_ID=$($PSQL "SELECT name_id FROM names WHERE name='$USERNAME'")

# Check to see if username exists
if [[ -z $NAME_ID ]]
  # If name id does not show up, then print welcome message and insert new data
  then
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_NAME=$($PSQL "INSERT INTO names(name) VALUES ('$USERNAME')")
  # If name id exists, then print the stats
  else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE name_id=$NAME_ID")
  BEST_GAME=$($PSQL "SELECT MIN(number_guess) FROM games WHERE name_id=$NAME_ID")
  echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi


# Create the secret number
SECRET_NUMBER=$(($RANDOM % 1000))
echo -e "Guess the secret number between 1 and 1000:"

#Start guessing
COUNTS=$1 #Number of guesses
#while case is true
while [[ "$test_case"=true ]]
do
  # Get an input
  read GUESS
  COUNTS=$((COUNTS+1))
#if guess is not integer, then guess again
  if [[ -n ${GUESS//[0-9]/} ]]
  then
  echo -e "That is not an integer, guess again:"
  else
    #else if guess matches, then case is false to exit loop
    if [[ $GUESS -eq $SECRET_NUMBER ]]
    then
      break
    else
      #else if guess is larger, then counts+=1
      if [[ $GUESS -gt $SECRET_NUMBER ]]
      then
      echo -e "It's lower than that, guess again:"
      else
        #else if guess if smaller, then counts+=1
        if [[ $GUESS -lt $SECRET_NUMBER ]]
        then
        echo -e "It's higher than that, guess again:"
        fi
      fi
    fi
  fi
done

# Guessed correctly, then print statement and input data
INSERT_DATA=$($PSQL "INSERT INTO games (name_id, number_guess) VALUES ($NAME_ID, $COUNTS)")
echo -e "You guessed it in $COUNTS tries. The secret number was $SECRET_NUMBER. Nice job!"
