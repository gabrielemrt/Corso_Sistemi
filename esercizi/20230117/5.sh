#!/bin/bash

# Schedula un'attività che, ogni mezz'ora, inserisca all'interno di un file
# custom_log_[YYYYMMDD] (giorno odierno), all'interno della cartella /var/log
# (crearlo se non esiste), tutte le righe presenti all'interno dell'output del
# comando dmesg che contengano un'occorrenza della stringa "error" oppure "warn"
# (ricercate con modalità case-insensitive)


directory="/home/gabriele/Scrivania/ITS_Sistemi_2/Script/esercizi/20230117/file-rx"
name="es-5-custom_log_$(date +\%Y\%m\%d).txt"
var="/var/log/custom_log_hist"

cd $directory

if [ ! = $name ]; then
	touch $name
fi

echo ""  >> $directory/$name
echo "$(date)" >> $directory/$name
echo ""  >> $directory/$name

sudo dmesg | grep error >> $directory/$name
sudo dmesg | grep warn  >> $directory/$name

echo "################################################################" >> $directory/$name


#########################


cd $var

if [ ! = $name ]; then
	touch $name
fi

echo ""  >> $var/$name
echo "$(date)" >> $var/$name
echo ""  >> $var/$name

sudo dmesg | grep error >> $var/$name
sudo dmesg | grep warn  >> $var/$name

echo "################################################################" >> $var/$name
