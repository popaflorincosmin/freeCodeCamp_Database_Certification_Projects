#1/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[  ! $1  ]]
then
  echo -e "Please provide an element as an argument."
else
  # Check parameter type and check it.
    if [[  $1 =~ ^[0-9]+$ ]]
    then
      ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number=$1")
    elif [[ ${#1} < 3 ]]
    then
      ATOMIC_NUMBER=$($PSQL "SELECT atomic_number from elements WHERE symbol='$1'")
    else
      ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE name='$1'")
    fi

    # If element is not found.
    if [[  -z $ATOMIC_NUMBER  ]]
    then
      echo "I could not find that element in the database."
      exit
    fi

    # Get element details.
    SYMBOL=$($PSQL "SELECT symbol FROM elements WHERE atomic_number=$ATOMIC_NUMBER")
    NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number=$ATOMIC_NUMBER")
    TYPE=$($PSQL "SELECT types.type FROM types INNER JOIN properties USING (type_id) WHERE properties.atomic_number=$ATOMIC_NUMBER")
    ATOMIC_MASS=$($PSQL "SELECT atomic_mass FROM properties WHERE atomic_number=$ATOMIC_NUMBER")
    MELTING_POINT=$($PSQL "SELECT melting_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUMBER")
    BOILING_POINT=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE atomic_number=$ATOMIC_NUMBER")

    # Display element details.
    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
fi