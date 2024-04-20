#!/bin/bash
#key generating function
function key_gen(){
  type="$1" #this is not required when passing a var with same name
      case $type in 
        1) number=$((546900 + RANDOM % 900000))
      echo $number ;;

        2) random_string=$(openssl rand -base64 20 | tr -dc '[:alnum:]' | fold -w 10 | head -c 8 )
          echo $random_string;;


        3) random_string=$(openssl rand -base64 25 | head -c 20 )
          echo $random_string;;

        *) echo "Choose a rigth option"
      esac

      }
#listing types of key generation
echo "Select the type of key to generate:
1- Six Digit OTP
2- Eight aplhaNum
3- Twenty Complexity"

read type
echo "Key:"
#generating the key
key_gen $type 

