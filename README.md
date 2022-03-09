# programmazioneMobileFlutter
 Realizzazione di una applicazione android, sviluppata in dart, per la gestione della dispensa

# Introduzione

EasyCooking è un'applicazione che consente a chiunque di cucinare con semplicità: grazie alla
nostra app potrai cercare ricette, crearne di tue, gestire la tua dispensa e la tua lista della spesa!
Make it easier, use EasyCooking!

## Analisi degli obiettivi

L'obiettivo di EasyCooking è quello di poter cucinare con maggiore semplicità, accendendo alle
molteplici ricette presenti nel nostro database senza dover ogni volta navigare tra i molteplici
siti web.
Per poter accedere alle nostre ricette sarà suffciente una connessione internet, è possibile effettuare
una ricerca a seconda del nome, della categoria e dell'origine della ricetta stessa, inoltre è
possibile condividere la ricetta nei social presenti all'interno del dispositivo.
Con EasyCooking è inoltre possibile creare proprie ricette, che verranno conservate in maniera
persistente, così da potervi accedere anche quando la rete internet non è disponibile: questa funzionalit
à risulta, però, disponibile solo se l'utente si registra.
Se l'utente non ha idea o voglia di scegliere una particolare ricetta, la funzionalità Ispirami
genererà una ricetta casuale dal nostro database che verrà mostrata a video.
Spesso la dispobilità di ingredienti risulta essere limitata: con EasyCooking è possibile inserire
gli elementi presenti nella propria dispensa per poi effettuare una ricerca delle ricette sugli stessi,
in questo modo sarà più facile cucinare qualcosa attraverso gli ingredienti che si possiedono già.
Infine, se l'utente desidera cucinare un piatto, ma allo stesso tempo non ha a disposizione tutti
gli elementi necessari, potrà scrivere nella lista della spesa gli elementi mancanti, così da non
dimenticare di doverli acquistare.

## Sintesi dell'approccio

L'approccio utilizzato è quello misto: abbiamo definito inizialmente le componenti principali che
avrebbero costituito la nostra applicazioni e secondo l'approccio top down, abbiamo diviso ogni
componente in sottoproblemi: per ognuna di esse abbiamo creato il layout e la logica che avrebbe
poi implementato la singola pagina.
A seguire abbiamo adottato il bottom up, per poter unificare ogni schermata secondo una certa
logica: ecco che ogni componente fondamentale è legato dalla schermata principale dai navigator,
che consentono di spostarsi con facilità tra le varie pagine.
Per la realizzazione dell'applicazione abbiamo usufruito della documentazione android e flut-
ter :
 - la prima ci ha permesso di sviluppare le componenti grafiche con una logica adeguata,
permettendone un utilizzo efficace;
 - la seconda ci ha permesso di gestire i dati da mostrare e la sezione di registrazione in
maniera ottimale.

## Sviluppo
Anche in questo caso andremo ad evidenziare gli aspetti più importanti dello sviluppo della
nostra applicazione:
 - Persistenza: per mantenere la persistenza dei dati abbiamo sfruttato la libreria sqlfite.
Con il database, presente nei services, abbiamo creato le tabelle dove verranno inseriti i
dati.
Nelle apposiste classi abbiamo creato le form che consentono all'utente di inserire le informazioni;
 - Permessi: anche in flutter abbiamo gestito dei permessi tramite la dipendenza im-
age_picker: alla richiesta dell'utilizzo della fotocamera o della galleria nell'inserimento
della ricetta, si dovranno prima accettare i permessi per poter inserire un'immagine;
 - Condivisione: come in kotlin, anche qui abbiamo inserito un bottone che consente la
condivisione della ricetta, con un invito ad utilizzare la nostra applicazione;
 - Firebase: Firebase è stato di fondamentale importanza per la gestione delle ricette che
possono essere scaricate e filtrate all'interno dell'applicazione.
Anche per flutter l'authentication ci ha consentito di gestire gli utenti autenticati con email
e password.
Un elemento fondamentale dell'applicazione kotlin era sicuramente l'utilizzo della Recycler View,
la quale non è stato possibile utilizzare in flutter, ma che abbiamo deciso di sostituire con delle
List View che con grande semplicità ci hanno consentito di svolgere lo stesso lavoro.

## Testing
Nonostante non fossero richiesti test, abbiamo deciso di inserirne alcuni:
 - test per verificare che la casella nome nella registrazione non può essere vuota
 - test per verificare se ci sono errori nell'inserimento del nome nella registrazione
 - test per verificare che la casella cognome nella registrazione non può essere vuota
 - test per verificare se ci sono errori nell'inserimento del cognome nella registrazione
 - test per verificare che la casella email nella registrazione non può essere vuota
 - test per verificare se ci sono errori nell'inserimento della mail nella registrazione
 - test per verificare che la casella email nell'autenticazione non può essere vuota
 - test per verificare se ci sono errori nell'inserimento della mail nell'autenticazione
 - test per verificare che la casella password nella registrazione non può essere vuota
 - test per verificare se ci sono errori nell'inserimento della password nella registrazione
 - test per verificare che la casella password nell'autenticazione non può essere vuota
 - test per verificare se ci sono errori nell'inserimento della password nell'autenticazione

## Note informative per un corretto funzionamento
In questa sezione vogliamo sottolineare che la nostra applicazione utter sfrutta delle librerie che
non supportano la null safety, e per questo motivo è necessario mandare in run l'applicazione da
terminale attraverso il comando flutter run -no-sound-null-safety .

## Autori
 - Margherita Galeazzi -> https://github.com/MargheritaGaleazzi
 - Lorenzo Longarini -> https://github.com/LorenzoLongarini
 - Chiara Amalia Caporusso -> https://github.com/ChiaraAmalia
