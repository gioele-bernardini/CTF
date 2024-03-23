challenge un pochino piu' complicata

git log per vedere i commit, ma sono tanti!
creiamo uno script per vedere le diverse versioni del file basandosi sull'hash del commit!
notiamo che, in una delle prime versioni, la parentesi finale del print viene tolta, e da li'
il programma non funzionera' piu' correttamente!


=> git show --format='%an' 0351e0474493168ca76441c24630c17554fd09ca | grep 'picoCTF' | xsel -b

DOPPIO PIPELINING PER COPIARE DIRETTAMENTE LA RIGA!
--format='%an' indica NAME dello user ( --format='%an <%ae>' ) per indicare anche la mail :)
