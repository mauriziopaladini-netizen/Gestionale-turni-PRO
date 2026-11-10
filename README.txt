GESTIONALE TURNI PRO — VERSIONE 4

Nuove funzioni grafiche:
- Home ridisegnata con pannello “Il prossimo turno”.
- Accessi rapidi a calendario, tabellone, importazione PDF ed esportazione.
- Barra di navigazione inferiore su smartphone.
- Tema scuro/chiaro con preferenza salvata sul dispositivo.
- Layout adattato a schermi piccoli.

Funzioni mantenute dalla versione precedente:
- Importazione PDF testuale tramite PDF.js.
- Tabellone con ricerca e selezione dipendenti.
- Calendario personale.
- Scelta codice originale oppure fascia oraria.
- Conversione Hnn: ora di inizio = numero / 2; durata turno = 8 ore.
- Esportazione CSV e calendario .ics.

Installazione:
1. Estrai lo ZIP.
2. Carica tutti i file su GitHub Pages/hosting HTTPS, mantenendo la cartella icons.
3. Ricarica la pagina. Se vedi ancora la vecchia versione, chiudi e riapri il sito o svuota la cache del browser.

Note:
- Il riepilogo prossimo turno usa il dipendente selezionato nel calendario.
- La libreria PDF.js viene caricata da CDN, quindi il primo caricamento richiede Internet.
- Verificare sempre i turni estratti rispetto al PDF originale.


VERSIONE 5 - PROFILO PERSONALE
- Scelta del nominativo personale salvata sul dispositivo.
- Riepilogo mensile: turni H riconosciuti, ore stimate (8 per turno), riposi R1/R2/RZ e giorni FER/OFF.
- Le statistiche sono indicative e vanno confrontate con il PDF originale.


VERSIONE 6 - STAMPA E ARCHIVIO MENSILE
- Pulsante Stampa calendario con impaginazione A4.
- Archivio locale per mese: ogni PDF importato correttamente viene archiviato automaticamente quando mese e anno sono riconosciuti.
- Possibilità di aprire un mese archiviato, salvarlo manualmente o eliminarlo.
- Esportazione e ripristino backup JSON; il ripristino unisce i mesi del backup a quelli già presenti.
- Il nominativo preferito resta salvato nel browser. Per trasferire lo storico su un altro dispositivo, esporta il backup e ripristinalo lì.
- L'archivio usa la memoria locale del browser: esporta backup periodici, perché cancellare i dati del sito può cancellare l'archivio.


VERSIONE 7 - MODIFICHE PERSONALIZZATE DEL CALENDARIO
- Clic/tocco su una casella del calendario per modificare il codice turno.
- Il codice originale del PDF resta intatto; le modifiche vengono conservate separatamente per dipendente e giorno.
- Stato modifica: da verificare o approvato manualmente dopo aver ricevuto conferma.
- Ripristino del turno originale disponibile dal pannello di modifica.
- Le modifiche sono salvate nell'archivio mensile locale e incluse nel backup JSON.
- Calendario personale, riepilogo e esportazione ICS utilizzano il turno modificato. Il tabellone generale e il CSV continuano a rappresentare i codici originali del PDF.
- Lo stato 'approvato' è una registrazione manuale e non una verifica ufficiale.


VERSIONE 8 - COMPATIBILITA' PROSPETTI SENZA MATRICOLA
- Corretto il riconoscimento delle righe che iniziano direttamente con cognome e nome, senza codice numerico dipendente.
- Aggiunto il codice *** tra i valori turno ammessi.
- La chiave interna del dipendente viene generata dal nominativo quando la matricola non e' presente.
- Aggiornata la cache PWA per forzare il caricamento della versione corretta.

\nVERSIONE 9 - CONTROLLO AUTOMATICO PDF
- Aggiunto pannello di verifica per ogni dipendente.
- Controlla il numero di codici rispetto ai giorni del mese.
- Evidenzia nominativi duplicati e codici turno non riconosciuti.
- Confronta la sequenza importata con la coda della riga originale estratta da PDF.js.
- Il controllo non sostituisce la verifica visiva del PDF: una lettura errata ma formalmente valida può comunque richiedere correzione manuale.

VERSIONE 10 - CONFRONTO AVANZATO E VISUALIZZAZIONE DOPPIA
- Confronto simultaneo del proprio turno con piu colleghi, giorno per giorno.
- Evidenzia turni uguali, diversi e differenze lavoro/riposo.
- Riepilogo dei giorni con differenze e filtro per mostrare solo i giorni diversi.
- Vista PDF + tabella affiancati con PDF originale caricato nel browser.
- Tabellone con intestazione e colonne identificative bloccate durante lo scorrimento.
- Il confronto usa i codici originali del PDF e non modifica i dati.


VERSIONE 11 - PROFILO PERSONALE E ARCHIVIO AUTOMATICO
- Profilo individuale: l'utente seleziona una volta il proprio nominativo dal prospetto e lo salva.
- Il profilo viene mantenuto sul browser/dispositivo e viene riutilizzato per calendario e confronti nei mesi successivi.
- Ogni PDF mensile importato viene archiviato automaticamente (se mese e anno sono riconosciuti).
- All'apertura dell'app viene ripristinato automaticamente l'ultimo mese archiviato e il profilo personale.
- Pulsanti rapidi per aprire il calendario personale, il confronto colleghi e l'ultimo mese.
- I dati restano locali sul dispositivo/browser: per trasferirli su un altro dispositivo utilizzare Backup/Ripristino JSON.
- Per un mese nuovo occorre importare il nuovo PDF una sola volta; non è possibile ricevere automaticamente il nuovo prospetto aziendale senza una fonte o un servizio di sincronizzazione.


VERSIONE 12 - ARCHIVIO PDF ORIGINALE
- I PDF importati vengono conservati localmente nel browser tramite IndexedDB, separatamente dai dati tabellari.
- Quando si riapre un mese dall'archivio, la vista PDF + tabella prova a recuperare anche il PDF originale.
- Eliminando un mese dall'archivio vengono eliminati anche i relativi dati PDF locali.
- I PDF sono conservati solo su questo browser/dispositivo e non vengono inclusi nel backup JSON: conserva anche i PDF originali in una cartella personale.
- Cancellare i dati del sito/browser o cambiare dispositivo può eliminare i PDF archiviati. Esporta regolarmente il backup JSON dei turni.

VERSIONE 13 - SINCRONIZZAZIONE CLOUD
La v13 aggiunge accesso account e sincronizzazione di profilo e archivio turni tramite Supabase. Prima dell'uso leggere ISTRUZIONI_CLOUD.txt e applicare SUPABASE_SETUP.sql al proprio progetto. I PDF originali restano locali in questa versione.

GitHub Pages: caricare i file di questa cartella nella radice della repository (non lo ZIP).


VERSIONE 14 - RIPRISTINO AUTOMATICO CLOUD
- All'apertura dell'app viene controllata la sessione Supabase già salvata nel browser.
- Se l'utente è ancora autenticato, l'app recupera automaticamente profilo e archivio turni dal cloud e aggiorna la copia locale.
- Se non c'è una sessione attiva o la rete non è disponibile, l'app resta utilizzabile con i dati locali e mostra un messaggio.
- Non è necessario inserire nuovamente la password a ogni apertura: la sessione viene mantenuta da Supabase nel browser, salvo logout, scadenza/revoca o cancellazione dei dati del sito.
- Dopo la modifica, caricare i file della versione 14 nel repository GitHub Pages sovrascrivendo quelli precedenti. Il service worker usa una nuova cache per attivare la versione aggiornata.


VERSIONE 15 - HOMEPAGE RINNOVATA E ACCOUNT PRIVATI
- Interfaccia aggiornata con stile più professionale e ottimizzata per PC e smartphone.
- Registrazione libera tramite email e password Supabase.
- I dati cloud restano privati per account grazie a Row Level Security.
- Su dispositivi condivisi, passando a un account diverso, l'archivio locale viene separato per evitare contaminazioni tra utenti.
- I PDF originali restano sul dispositivo; nel cloud vengono sincronizzati profilo e dati dei turni.

VERSIONE 16 - AREA AMMINISTRATORE E INTERFACCIA MIGLIORATA
- La configurazione Cloud è mostrata solo all'account autenticato maurizio.paladini@gmail.com.
- Per la prima configurazione su un nuovo dispositivo, il pannello compare quando viene inserita l'email amministratore nel campo email prima dell'accesso.
- Gli account dipendente non visualizzano il pannello di configurazione.
- Aggiunti indicatori del ruolo, area accesso personale e nota privacy.
- Migliorate gerarchie visive e presentazione della dashboard.
Nota tecnica: URL e chiave publishable Supabase non sono segreti; la protezione reale dei dati è affidata alle policy RLS nel database. Non inserire mai la service_role key nel browser.

VERSIONE 16 - AREA AMMINISTRATORE E INTERFACCIA MIGLIORATA
- La configurazione Cloud è mostrata solo all'account autenticato maurizio.paladini@gmail.com.
- Per la prima configurazione su un nuovo dispositivo, il pannello compare quando viene inserita l'email amministratore nel campo email prima dell'accesso.
- Gli account dipendente non visualizzano il pannello di configurazione.
- Aggiunti indicatori del ruolo, area accesso personale e nota privacy.
- Migliorate gerarchie visive e presentazione della dashboard.
Nota tecnica: URL e chiave publishable Supabase non sono segreti; la protezione reale dei dati è affidata alle policy RLS nel database. Non inserire mai la service_role key nel browser.

VERSIONE 17 - LETTORE PDF ROBUSTO
- Rilevamento del numero di colonne giorno dall'intestazione reale del prospetto, senza presumere sempre 28/30/31.
- Supporto ai codici turno osservati nei PDF di prova: Hxx, Fxx, R1, R2, RZ, FER, FEST, TRN, OFF e altri già previsti.
- Supporto alle pagine successive che contengono soltanto le righe dipendenti residue.
- Segnalazione esplicita quando il PDF contiene meno giorni del mese civile: non vengono inventati turni mancanti.
- Verifica strutturale delle righe importate.
