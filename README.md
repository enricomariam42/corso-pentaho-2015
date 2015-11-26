Questo repository è per il corso di novembre-dicembre 2015 organizzato con l'A.O. di Vimercate

Sono presenti le trasformazioni ETL e i file necessari alle lezioni in aula nella certella etl/.

Nella configurazione predefinita necessita di un serve mysql in locale sulla porta 3306 con utente root e password my-secret-pw.

Utilizzo:

1) Creare db ods lanciando il job inizializzazione/inizializza_db_ods.kjb che crea la tabella dei centri e la popola da file csv.

2) Eventualmente lanciare la trasformazione inizializzazione/genera_fatti.ktr per creare un nuovo file di testo "prestazioni_erogate_AAAAMMGG.txt" per il caricamento dei fatti.

3) Lanciare il job inizializza_db.kjb che crea il db corso, le tabelle delle dimensioni e dei fatti, e popola la dimensione data.

4) Lanciare il job popola_dwh.kjb che aggiorna le dimensioni e carica i fatti.

