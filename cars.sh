#! /bin/bash
#cars.sh
#Ellie Kolvereid

n=0

ehco "Welcome to inventory of Old cars!"
ehco " "

while [ "$n" -ne "3" ]
do
	echo "Pick your option"
	echo "Type 1 to enter a new car"
	echo "Type 2 to display the list of cars"
	echo "Type 3 to save and exit the program"
	read -r n

	case "$n" in
		"1") echo "Enter the year of the car:"
		read -r year
		echo "Enter the make of the car:"
		read -r make
		echo "Enter the model of the car:"
		read -r model
		newCar="$year:$make:$model"
		echo "$newCar" >> my_old_cars;;
		"2") sort my_old_cars;;
		"3") echo "Thank you for using the inventory!";;
		*) echo "Sorry that opetion is invalid";;
	esac
	
	done
	
