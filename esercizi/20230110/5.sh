#!/bin/bash

# Creare uno script eseguibile che una volta lanciato crei una cartella
# con nome zucchero e dopodiché si comporti in maniera differente a seconda
# che l'utente ad averlo lanciato faccia parte o meno del gruppo "zucchero":
# in caso ne faccia parte creare una copia di tutti i file contenenti la parola
# zucchero all'interno dell'omonima cartella; in caso negativo creare un file
# "zucchero.txt" all'interno della cartella zucchero che contenga tutti i nomi dei
# file che sarebbero stati inseriti nella cartella se l'utente facesse parte del
# gruppo "zucchero"

cd /home/gabriele/Scrivania/ITS_Sistemi_1/

if [ ! = "zucchero" ]; then
	mkdir zucchero
#if ls | grep "zucchero"; then
#	rm -r zucchero/
fi

if id -Gn | grep "zucchero"; then
	find /home/gabriele/Scrivania/ITS_Sistemi_1/ -type f -exec grep {} -q -le "zucchero" \; -exec cp {} ./zucchero/ \;
else
	cd ./zucchero
	if [ ! = "zucchero.txt" ]; then 
		touch zucchero.txt
	fi
	find ./../ -type f -exec grep {} -q -le "zucchero" \; > ./zucchero.txt
fi
