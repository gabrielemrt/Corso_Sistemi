#!/bin/bash

# Schedula un'attività che, ogni giorno alle 04:00am comprima il
# file custom_log_[YYYYMMDD] (giorno odierno), mediante gzip e lo
# sposti al percorso /var/log/custom_log_hist (crearlo se non esiste)


directory="/home/gabriele/Scrivania/ITS_Sistemi_2/Script/esercizi/20230117/file-rx"
name="es-5-custom_log_$(date +\%Y\%m\%d).txt"
nameZIP="es-6-custom_log_$(date +\%Y\%m\%d).gz"
var="/var/log/custom_log_hist"

cd $directory
if [ ! = $nameZIP ]; then
	rm $nameZIP
else
	gzip -c $name > $nameZIP 
fi


cd $var
if [ ! = $nameZIP ]; then
	rm $nameZIP
else
	gzip -c $name > $nameZIP 
fi