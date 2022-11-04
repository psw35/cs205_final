#!/bin/bash
# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

# get filename
FILE="$1"

# print title
echo "======= SUMMARY OF POKEMON.DAT ======"
# print total pokemon using awk with filename
awk '{ } END { print "Total Pokemon: "$1 }' $FILE
# print avg hp using awk with filename
awk 'BEGIN { }
{ avg += $6; n++ }
END { print "Avg. HP: "avg / n }' $FILE
# print avg attack using awk with filename
awk 'BEGIN { }
{ avg += $7; n++ }
END { print "Avg. Attack: "avg / n }' $FILE
# print footer
echo "======= END SUMMARY ======="

