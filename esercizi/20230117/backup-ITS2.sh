	#!/bin/bash

# Crea il backup della cartella ITS_Sistemi_2

cd /home/gabriele/Scrivania/ITS_Sistemi_2/

tar -czf /home/gabriele/Scrivania/Backup/backup_ITS2/backup_$(date +\%Y\%m\%d).tar.gz ./

