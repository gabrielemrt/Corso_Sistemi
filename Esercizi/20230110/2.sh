#!/bin/bash

# Creare uno script che prenda in ingresso un parametro, lo script deve zippare tutti i file che contengono
# il parametro al loro interno in un file .zip che deve avere lo stesso nome del parametro carcato da collocare
# all'esterno di ricettario. Non deve lasciare residui di cartelle o file temporanei.

echo -n "Inserire il parametro: "
read parametro

file=$(find /home/gabriele/Scrivania/ITS_Sistemi_1/ricettario/ -type f -exec grep {} -le "$parametro" \;)

zip -j /home/gabriele/Scrivania/ITS_Sistemi_1/$parametro $file
#zip $parametro.zip $file
