#!/bin/bash

# Array in Shell Script. It holds one or more than one value
potatoes_to_ship=(1 2 3 4 5 6 7 10)

ship_potatoes(){
    echo "Let's ship potato "
}

# Work - get the job done

for potato_container in "${potatoes_to_ship[@]}"; do
    ship_potatoes
    echo " Shipped $potato_container potatoes"
done