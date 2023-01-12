#!/bin/bash 

# Prendere in ingresso un parmaetro e che vada a copiare tutti i file che contengono il parametri nella cartella temp
# all'esterno di ricettario

echo "Inserire il parametro della ricerca"
read parametro 

rm /home/gabriele/Scrivania/ITS_Sistemi_1/temp/*.txt

find /home/gabriele/Scrivania/ITS_Sistemi_1/ricettario/ -type f -exec grep {} -q -e "$parametro" \; -exec cp {} /home/gabriele/Scrivania/ITS_Sistemi_1/temp \; 
