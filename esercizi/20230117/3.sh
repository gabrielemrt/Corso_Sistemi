#!/bin/bash 

# Schedula ogni 4 giorni alle ore 06:00am un completo aggiornamento
# dei pacchetti (preceduto da un doveroso aggiornamento della lista
# dei pacchetti disponibili) e salva l'output di tali operazioni in
# un file chiamato upgrade_report da creare (o eventualmente sovrascrivere)
# al percorso /home/user/Scrivania (dove user è il nome del vostro utente)

directory="/home/gabriele/Scrivania/ITS_Sistemi_2/Script/esercizi/20230117/file-rx/es-3.txt"


echo $(date +\%Y-\%m-\%d) >> $directory

echo '' >> $directory
sudo apt-get update  >> $directory
sudo apt-get upgrade >> $directory
echo '####################################################' >> $directory

