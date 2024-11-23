#!/bin/bash


reverse_entire_sentence() {
    
    input="$1"
    reversed=""
    for (( i=${#input}-1; i>=0; i-- )); do
        reversed="$reversed${input:$i:1}"
    done
    echo "$reversed"
}


reverse_words() {
    input="$1"
    	reversed_words=""
    for word in $input; do
        reversed=""
        for (( i=${#word}-1; i>=0; i-- )); do
            reversed="$reversed${word:$i:1}"
        done
        reversed_words="$reversed_words$reversed "
    done
    echo "$reversed_words"
}




flag="$1"
shift
string="$*"


if [ "$flag" == "-e" ]; then
    reverse_entire_sentence "$string"
elif [ "$flag" == "-w" ]; then
    reverse_words "$string"
else
    echo "Error: Enter the correct input."
    exit 1
fi
