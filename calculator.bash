#!/bin/bash

## Jairo Eduardo Machado
## 2º DAW

echo "######## CALCULATOR ########"

operation=1;

## BUCLE UNTIL

until [ $operation -eq 0 ]
do
    echo "----------- MENU -----------"
    echo "1 - Plus"
    echo "2 - Substract"
    echo "3 - Divide"
    echo "4 - Multiply"
    echo "0 - Exit"
    echo "----------------------------"
    echo "---- Chose an operation ----"

    read operation

    if [ $operation -ne 0 ]
    then
        echo "----------------------------"
        echo "-- Choose the first value --"

        read numberA

        echo "----------------------------"
        echo "-- Choose the second value -"

        read numberB

        echo "-----------------------------"


        ##############################
        # Function: plus
        # Arguments: $numberA (int), $numberB (int)
        # Description: Both numbers will be sum one plus the other
        ##############################

        function plus(){
            let result=($1 + $2)
            echo -e "$1+$2=$result"
        }


        ##############################
        # Function: substract
        # Arguments: $numberA (int), $numberB (int)
        # Description: Both numbers will be subtracted one from the other
        ##############################

        function substract(){
            let result=($1 - $2)
            echo -e "$1-$2=$result"
        }


        ##############################
        # Function: divide
        # Arguments: $numberA (int), $numberB (int)
        # Description: Both numbers will be divide one on the other
        ##############################

        function divide(){
            let result=($1 / $2)
            echo -e "$1/$2=$result"
        }


        ##############################
        # Function: multiply
        # Arguments: $numberA (int), $numberB (int)
        # Description: Both numbers will be multiplied one for the other
        ##############################

        function multiply(){
            let result=($1 * $2)
            echo -e "$1*$2=$result"
        }


        case $operation in
            1)
                plus $numberA $numberB
            ;;
            2)
                substract $numberA $numberB
            ;;
            3)
                divide $numberA $numberB
            ;;
            4)
                multiply $numberA $numberB
            ;;
            *)
                echo "Invalid Operation"
            ;;
        esac
    fi
done

echo "----------------------------"
echo "See you soon :)"