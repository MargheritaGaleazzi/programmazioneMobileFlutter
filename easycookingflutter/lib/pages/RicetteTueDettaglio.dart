import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/MyFlutterApp.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

import 'RicetteTue.dart';

/*
Schermata che mostra il dettaglio delle ricette inserite dall'utente
 */
class RicetteTueDettaglio extends StatefulWidget {
  RicetteTueDettaglio({Key? key}) : super(key: key);

  @override
  _RicetteTueDettaglioState createState() => _RicetteTueDettaglioState();
}

class _RicetteTueDettaglioState extends State<RicetteTueDettaglio> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as RicettaDettaglioArgomenti;

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Easy Cooking'),
        actions: <Widget>[
          IconButton(
            /*
              Icona che se cliccata porta ad un'altra schermata dove si possono leggere le info relative all'applicazione
               */
            icon: const Icon(
              MyFlutterApp.info_outline,
              color: Colors.white,
            ),
            tooltip: 'Info',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Info'),
                    ),
                    body: SingleChildScrollView(
                      child: RichText(
                        text: TextSpan(
                          text: 'Come iniziare? \n',
                          style: TextStyle(color: Colors.red, fontSize: 24),
                          children: <InlineSpan>[
                            WidgetSpan(
                                child: SizedBox(
                              child: Image.asset(
                                "assets/images/food.png",
                                fit: BoxFit.cover,
                              ),
                            )),
                            TextSpan(
                                text: 'Cerca Ricette:\n',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 24)),
                            TextSpan(
                                text:
                                    'In questa prima sezione è possibile cercare le ricette secondo il nome, la categoria oppure la sua origine. Cliccando su \'Vedi Ricette\' verranno restituite tutte le ricette presenti nel database. All\'interno della ricetta verranno visualizzate tutte le informazioni utili alla preparazione del piatto selezionato, inoltre è possibile condividere la ricetta oppure salvarla così da poterne usufruire senza la connessione ad internet.\n',
                                style: TextStyle(
                                    fontSize: 18)),
                            TextSpan(
                                text: 'Dispensa\n',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 24)),
                            TextSpan(
                                text:
                                    'Nella sezione Dispensa è possibile registrare gli alimenti presenti nella vostra dispensa:  cliccando su \'Aggiungi\', si aprirà una piccola form in cui è possibile aggiungere l\'ingrediente desiderato. Per eliminare un elemento è sufficiente scorrere lo stesso verso sinistra. Infine è possibile effettuare un ricerca delle ricette secondo gli elementi inseriti.\n',
                                style: TextStyle(
                                    fontSize: 18)),
                            TextSpan(
                                text: 'Lista Spesa\n',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 24)),
                            TextSpan(
                                text:
                                    'Consiste di un\'effettiva lista della spesa: se, una volta visionata una ricetta, l\'utente dovesse rendersi conto di non avere un ingrediente potrà andarlo ad aggiungere in questa area. Anche in questo caso, per eliminare un elemento sarà sufficiente scorrere lo stesso verso sinistra.\n',
                                style: TextStyle(
                                    fontSize: 18)),
                            TextSpan(
                                text: 'Tue Ricette\n',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 24)),
                            TextSpan(
                                text:
                                    '\'Ricette Tue\' è una funzionalità disponibile solo per gli utenti che hanno effettuato la registrazione: permette di creare ricette personalizzate secondo i gusti e le idee dell\'utente\n',
                                style: TextStyle(
                                    fontSize: 18)),
                            TextSpan(
                                text: 'Login\n',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 24)),
                            TextSpan(
                                text:
                                    'Questa sezione sarà visibile solo agli utenti che non hanno effettuato la registrazione. Permette di effettuare il login oppure di registrarsi.\n',
                                style: TextStyle(
                                    fontSize: 18)),
                            TextSpan(
                                text: 'Offline\n',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 24)),
                            TextSpan(
                                text:
                                    'Possiamo accedere a questa sezione solo se l\'utente è registrato, semplicemente cliccando sul pulsante RicetteTue. Qui potremo visualizzare ed accedere alle ricette che abbiamo salvato in precedenza.\n',
                                style: TextStyle(
                                    fontSize: 18)),
                            TextSpan(
                                text: 'Ispirami\n',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 24)),
                            TextSpan(
                                text:
                                    'Non sai cosa cucinare? Pur di non pensare accetteresti un piatto a base di frattaglie di cavallo? Questa è la funzione che fa per te. \'Ispierami\' genera per te una ricetta casuale dal nostro database, a tuo rischio e pericolo :)\n',
                                style: TextStyle(
                                    fontSize: 18)),
                            TextSpan(
                                text: 'Contattaci\n',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 24)),
                            TextSpan(
                                text:
                                    'Se hai domande puoi inviarci una mail. Se invece sei interessato ad ulteriori ricette puoi trovarci su instagram, dove le nostre esperte sono pronte a deliziarti con fantastici piatti!\n',
                                style: TextStyle(
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          //foto con titolo
          Container(
              child: Column(
            children: [
              ConstrainedBox(
                constraints: BoxConstraints.expand(height: 210.0),
                child: Image.memory(args.fotoRicetta, fit: BoxFit.cover),
              ),
              Align(
                alignment: Alignment.center,
                child:
                Padding(
                  padding: EdgeInsets.all(8),
                  child:Text(
                    args.nome_ricetta,
                    style: TextStyle(color: Colors.red, fontSize: 22,),maxLines: 5,textAlign: TextAlign.center,),
                ),),
              FittedBox(
                fit: BoxFit.fitWidth, //tabella con tempi
                child: DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Preparazione:',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Cottura:',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Totale:',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                  rows: <DataRow>[
                    DataRow(
                      cells: <DataCell>[
                        DataCell(Text(args.prepTime)),
                        DataCell(Text(args.cookTime)),
                        DataCell(Text(args.totalTime)),
                      ],
                    ),
                  ],
                ),
              ),
              Text("Ingredienti:",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                      fontStyle: FontStyle.italic)),
              Text(args.ingredienti_ricetta),
              Text("Procedimento:",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                      fontStyle: FontStyle.italic)),
              Text(args.preparazione),
            ],
          )),
        ]),
      ),
    );
  }
}
