#!/bin/bash 

# Schedula ogni giorno alle 01:00pm un'attività che mi scriva quanti processi
# sono in esecuzione all'interno di in un file chiamato process_report da
# creare (o eventualmente sovrascrivere) al percorso /home/user/Scrivania
# (dove user è il nome del vostro utente)

directory="/home/gabriele/Scrivania/ITS_Sistemi_2/Script/esercizi/20230117/file-rx"


echo -n $(date +\%Y-\%m-\%d) >> $directory/es-2.txt

echo -n ' (' >> $directory/es-2.txt
echo -n $(ps aux | wc -l) >> $directory/es-2.txt
echo ')' >> $directory/es-2.txt



