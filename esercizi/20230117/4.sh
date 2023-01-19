#!/bin/bash

# Verifica che la rotazione dei log sia settimanale (eventualmente impostala)
# e schedula un'attività che, ogni domenica alle 01:00am mi scriva il numero
# di occorrenze (ricercate con modalità case-insensitive) trovate all'interno
# del file syslog.1 e del file messages.1 all'interno di un file chiamato error_report
# da creare (o eventualmente sovrascrivere) al percorso /home/user/Scrivania
# (dove user è il nome del vostro utente)


directory="/home/gabriele/Scrivania/ITS_Sistemi_2/Script/esercizi/20230117/file-rx/es-4.txt"
log="/var/log"

echo $(date +\%Y-\%m-\%d) >> $directory
echo '' >> $directory


#sudo find $log -type f -name "syslog.1\|messages.1" -exec -grep {} -e "error_report" \; >> $directory

cd $log
echo -n "Syslog   = "  >> $directory
sudo wc -l syslog.1  >> $directory
echo -n "message  = " >> $directory
sudo wc -l messages.1 >> $directory


echo '####################################################' >> $directory

