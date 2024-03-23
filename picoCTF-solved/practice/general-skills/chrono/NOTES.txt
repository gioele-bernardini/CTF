ssh -p <port> nome_utente@nome_server
per connettersi via ssh

In Linux, tasks or jobs can be scheduled to run at specified intervals via the cron daemon. This is generally managed through the crontab utility command. Jobs to be ran as specific users are written to /var/spool/cron/crontabs/$USER. System-wide cron jobs are stored in /etc/crontab.

scp nome_utente@indirizzo_server:/percorso_locale /percorso_destinazione_locale
