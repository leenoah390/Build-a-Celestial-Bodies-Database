#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.


# CSV file, split by ","
echo $($PSQL "TRUNCATE games, teams")
#cat games_copy.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS


# Collect data with loop
do
  # Skip first row
  if [[ $YEAR != "year" ]]

  # Collect data for teams
  # This way, I can get team_id and move along
  then
    # Get winner name
    WIN_NAME=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    # Check to prevent duplicate
    if [[ -z $WIN_NAME ]]
    then
      # If valid, insert
      INSERT_WIN=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    fi

    # Get loser name
    OPP_NAME=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    # Check to prevent duplicate
    if [[ -z $OPP_NAME ]]
    then
      # If valid, insert
      INSERT_OPP=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi
    # Should be more straight forward now...
    # Insert the values to the table
    INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WIN_NAME, $OPP_NAME, $WINNER_GOALS, $OPPONENT_GOALS)")
  fi
done
