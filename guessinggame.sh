#!/usr/bin/env bash
# File: guessinggame.sh

number=$(ls -1 --file-type | grep -v '/$' | wc -l)

echo "Guess de number of files in the current directory and then press Enter:"
read response

while [[ $response -ne $number ]]
do
  if [[ $response -gt $number ]]
  then
  	echo "That number is too high. Please keep trying:"
  	read response
  else
  	echo "That number is too low. Please keep trying:"
  	read response
  fi
done

echo "That is right. Congratulations!"
