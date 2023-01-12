#!/bin/bash 

#Inserisci tre numeri e mi devi restituire il numero maggiore 

echo "Inserire tre numeri:"
read uno due tre 

if [ $uno -gt $due ] && [ $uno -gt $tre ]; then 
 echo "Il numero più grande è $uno" 
elif [ $due -gt $uno ] && [ $due -gt $tre ]; then
 echo "Il numero più grande è $due"
elif [ $tre -gt $uno ] && [ $tre -gt $due ]; then
 echo "Il numero più grande è $tre"
fi 

