prima ctf importante

occorre intanto chiedersi quali privilegi abbiamo
whoami per capire chi siamo
sudo -l per vedere i privilegi di cui disponiamo

con questo comando notiamo che possiamo eseguire /usr/bin/vi
in particolare, possiamo eseguirlo come root!
infatti sudo -l ci consente di vedere quali comandi possiamo
lanciare come root noi stessi

esempio => sudo apt update
lo lanciamo come root ma senza switchare noi stessi a root
lanciamo insomma un programma con i privilegi di un ALTRO utente

di conseguenza, lanciandolo come root il programma mantiene i privilegi
di root e noi dentro a questo programma possiamo fare cosa meglio crediamo :)






guardiamo meglio il comando da lanciare allora
sudo vi -c ':!/bin/sh' /dev/null
sudo sappiamo cosa fa
con vi -c lanciamo vi e -c indica che gli diamo subito un comando da terminale
':!/bin/sh' indica che lanciamo un comando di sistema!
in particolare, lanciamo la shelle (bin/sh appunto)
poiche' siamo in vi da root, la shell ha privilegi da root :)

infine /dev/null indica che stiamo dicendo a vi di aprire un bel niente,
non ci serve nessun file infatti :)
infine, da istruzione
ls -la /root/
cat /root/.flag.txt

notiamo che non possiamo comunque accedere alla folder, ma tutto il resto si'!
