#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate a random number.
RANDOM_VALUE=$((  $RANDOM % 1000 + 1  ))

# Ask for username.
echo "Enter your username:"
read USERNAME

# Check if username is in database; if not add it.
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
if [[ -z $USER_ID ]]
then

  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

else
  GAMES_NUMBER=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_NUMBER games, and your best game took $BEST_GAME guesses."
fi

NO_OF_GUESSES=0
GUESS=11111

# Guess the number.
echo "Guess the secret number between 1 and 1000:"
while [[ $RANDOM_VALUE != $GUESS ]]
do

read GUESS
if [[ ! $GUESS =~ ^[0-9]+$ ]]
then
  echo "That is not an integer, guess again:"
  continue
fi

((NO_OF_GUESSES++))
if [[ $RANDOM_VALUE -eq $GUESS ]]
then
  # Insert game into database.
  INSERT_GAME=$($PSQL "INSERT INTO games (user_id, guesses) VALUES ($USER_ID, $NO_OF_GUESSES)")
  echo "You guessed it in $NO_OF_GUESSES tries. The secret number was $RANDOM_VALUE. Nice job!"
  break

elif [[ $RANDOM_VALUE -lt $GUESS ]]
then
  echo "It's lower than that, guess again:"

else
  echo "It's higher than that, guess again:"
fi

done
