#!/bin/bash 

# 0.1 Creare uno script che prenda in ingresso due numeri e mi dica se il primo è maggiore del secondo oppure no
echo "Inserire il primo numero:"
read uno
echo "Inserire il secondo numero:"
read due 

if [ $uno > $due ]; then
 echo "Il primo numero è maggiore del secondo"
else 
 echo "Il primo numero è minore del secondo"
fi
