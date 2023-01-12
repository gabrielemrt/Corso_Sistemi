#!/bin/bash

# Creare uno script eseguibile che prenda in ingresso due parametri.
# Lo script deve zippare tutti i file che contengono il primo parametro
# al loro interno ma non il secondo in un file .zip che deve avere il nome
# costruito secondo il seguente formato: parametro1_no_parametro2.zip.
# Non deve lasciare residui di file e/o cartelle temporanei.

echo -n "Inserire il primo parametro: "
read uno
echo -n "Inserire il secondo parametro: "
read due

file=$(find /home/gabriele/Scrivania/ITS_Sistemi_1/ricettario/ -type f -exec grep {} -v -le "$due" \; -exec grep {} -le "$uno" \;)

zip -j /home/gabriele/Scrivania/ITS_Sistemi_1/${uno}_no_${due}.zip $file
