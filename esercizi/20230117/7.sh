#!/bin/bash

# Schedula un'attività che ogni primo del mese alle ore 02:00am raccolga
# tutti i file custom_log_[YYYYMMDD].gz del mese precedente presenti nella
# cartella /var/log/custom_log_hist li comprima in un file chiamato
# custom_log_[YYYYMM].tar.gz (mese appena trascorso) da lasciare all'interno
# della cartella /var/log/custom_log_hist

directory="/home/gabriele/Scrivania/ITS_Sistemi_2/Script/esercizi/20230117/file-rx"
name="es-7-custom_log_$(date +\%Y\%m).tar.gz"
nameZIP="es-5-custom_log_$(date +\%Y\%m\%d)"
var="/var/log/custom_log_hist"


cd $directory
tar -czf $name $(find ./ -type f -name "es-5-custom_log_$(date +\%Y\%m)*")
rm es-5-custom*
rm es-6-custom*

#######################

cd $var
tar -czf $name $(find ./ -type f -name "es-5-custom_log_$(date +\%Y\%m)*")
rm es-5*
rm es-6*

