#! /bin/bash
#cars.sh
#Ellie Kolvereid

N=0
while [ "$N" -ne "3" ]
do
	echo "[1] Enter a car"
	echo "[2] Display the list of cars"
	echo "[3] Quit and exit the program"
	echo "Which number would you like to select?: "
	read -r N
	 case "$N" in
		 "1") 
			 echo "Enter the year of the car: "
			 read -r YEAR
			 echo "Enter the make of the car: "
			 read -r MAKE
			 echo "Enter the model of the car: "
			 read -r MODEL
			 NEW="${YEAR}:${MAKE}:${MODEL}"
			 echo  "$NEW" >> my_old_cars.txt
			 ;;
		 "2")
	 		 sort  my_old_cars.txt;;
		 "3")
			 echo "Goodbye.";;
	 	 *)
	   		 echo "Sorry, that choice is invalid.";;
	 esac
done
