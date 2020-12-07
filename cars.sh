#! /bin/bash
# cars.sh
# Derek Norman

while true
do
	echo "
	
	Please make a slection with the corrosponding numbers below
	------------------------------------------------------------------
	(1) Add a car
	(2) List the cars in the inventory file
	(3) Quit
       

	"
	read selection
	case $selection in
		1)
			echo "Year of the car: "
			read carYear
			echo "Make of the car: "
			read carMake
			echo "Model of the car: "
			read carModel
			echo "${carYear}:${carMake}:${carModel}" >> My_old_cars.txt
			;;
		2) 
			sort My_old_cars.txt
			;;
		3) 
			echo "Goodbye"
			break
			;;
	esac
done
