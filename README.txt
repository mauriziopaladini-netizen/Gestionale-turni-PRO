GESTIONALE TURNI PRO — VERSIONE 23 LOCALE

Questa versione non utilizza account, email, password o sincronizzazione cloud.
Non richiede Supabase e non trasmette i turni a un archivio remoto.

FUNZIONI
- Importazione dei prospetti PDF.
- Conservazione dei PDF originali nell'archivio del browser (IndexedDB).
- Estrazione automatica del testo e dei turni tramite PDF.js.
- Tabellone completo, calendario personale e confronto colleghi.
- Correzione manuale dei codici e importazione personale guidata.
- Archivio mensile locale.
- Esportazione e ripristino backup JSON.
- Esportazione calendario personale in formato .ics e tabellone CSV.

ATTENZIONE AI DATI
I PDF originali e l'archivio turni sono salvati nel browser e sul dispositivo utilizzato.
Non vengono sincronizzati automaticamente con altri dispositivi.
Usa regolarmente "Esporta backup" e conserva il file JSON in un luogo sicuro.
Se cancelli i dati del browser o cambi dispositivo, potresti perdere l'archivio locale.

LETTURA PDF
Il lettore estrae il testo presente nel PDF; non è un sistema OCR per documenti scansionati come immagini.
L'impaginazione dei prospetti può variare: controlla sempre nominativi, colonne dei giorni e codici sul PDF originale.
Se la lettura automatica non riconosce correttamente le righe, usa l'importazione personale guidata e verifica la sequenza giorno per giorno.

PUBBLICAZIONE SU GITHUB PAGES
1. Estrai tutti i file contenuti nello ZIP.
2. Apri il repository GitHub.
3. Sostituisci i file del sito con quelli estratti, mantenendo la struttura nella cartella principale.
4. Attendi la pubblicazione di GitHub Pages.
5. Riapri il sito e, se vedi la vecchia versione, aggiorna la pagina o rimuovi la vecchia PWA dalla schermata Home e reinstallala.

FILE PRINCIPALI
- index.html: applicazione.
- service-worker.js: cache offline/PWA.
- manifest.webmanifest: impostazioni PWA.
- icon-192.png e icon-512.png: icone.

VERSIONE 23
Edizione locale senza accesso cloud. Centro lettura PDF ridisegnato con visualizzazione affiancata del documento originale e del tabellone ricostruito.
