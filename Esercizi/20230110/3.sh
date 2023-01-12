#!/bin/bash

# Creare un file script che prenda in ingresso due parametri, lo script deve zippare tutti i file che contengono
# entrambi i parametri al loro interno in un file .zip che deve avere il nome costituito secondo il seguente 
# formato: parametro1_parametro2.zip. Non bisogna lasciare file residui o file temporanei 

echo -n "Inserire il primo parametro: "
read uno
echo -n "Inserire il secondo parametro: "
read due 

file=$(find /home/gabriele/Scrivania/ITS_Sistemi_1/ricettario/ -type f -exec grep {} -le "$uno\|$due" \;)

zip -j /home/gabriele/Scrivania/ITS_Sistemi_1/${uno}_${due}.zip $file

