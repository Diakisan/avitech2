import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class RadioGroupWidget extends State {
// Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Homme';
                  id = 1;
                });
              },
            ),
            Text(
              'Homme',
              style: new TextStyle(fontSize: 17.0),
            ),
            Radio(
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'Femme';
                  id = 2;
                });
              },
            ),
            Text(
              'Femme',
              style: new TextStyle(
                fontSize: 17.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

const a_vert = const Color(0xFF2FB35A);
const a_orange = const Color(0xFFFFAA00);
const a_gray = const Color(0xFF666666);
const a_gray2 = const Color(0xFFB3B3B3);

class InscriptionPage extends StatelessWidget {
  const InscriptionPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(170.0), //augmente la taille de ApppBar
        child: AppBar(
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/2.png'),
                  fit: BoxFit.contain,
                ),
              ),
              height: 170,
            ),
          ),
          elevation: 0,
          backgroundColor: a_vert,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(65),
          )),
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: Text(
                  'INSCRIPTION',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30,
                ),
                color: Colors.black,
                height: 1,
              ),
            ),
            //Nom
            Center(
              child: Container(
                width: 370,
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nom',
                    hintText: "Nom",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: a_gray2, width: 2.0),
                    ),
                  ),
                ),
              ),
            ),
            //prenom
            Center(
              child: Container(
                width: 370,
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Prénom',
                    hintText: "Prénom",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: a_gray2, width: 2.0),
                    ),
                  ),
                ),
              ),
            ),
            //numero
            Center(
              child: Container(
                width: 370,
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Numero',
                    hintText: "Numero",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: a_gray2, width: 2.0),
                    ),
                  ),
                ),
              ),
            ),
            //Email
            Center(
              child: Container(
                width: 370,
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'E_mail',
                    hintText: "E_mail",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: a_gray2, width: 2.0),
                    ),
                  ),
                ),
              ),
            ),
            //date
            Center(
              child: Container(
                width: 370,
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: DateTimeFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.black45),
                    errorStyle: TextStyle(color: Colors.redAccent),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.event_note),
                    labelText: ' Date de naissance',
                  ),
                  mode: DateTimeFieldPickerMode.date,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (e) => (e?.day ?? 0) == 1
                      ? 'Entrer votre date de naissance'
                      : null,
                  onDateSelected: (DateTime value) {
                    print(value);
                  },
                ),
              ),
            ),
            //sexe
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 30,
                  bottom: 10,
                  left: 25,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sexe",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 0,
                ),
                child: RadioGroup(),
              ),
            ),
            //mot de passe
            Center(
              child: Container(
                width: 370,
                margin: EdgeInsets.only(
                  top: 30,
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    hintText: "Mot de passe",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: a_gray2, width: 2.0),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 30,
                  bottom: 10,
                  left: 25,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Confirmer votre mots de passe",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 370,
                margin: EdgeInsets.only(
                  top: 0,
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    hintText: "Mot de passe",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: a_gray2, width: 2.0),
                    ),
                  ),
                ),
              ),
            ),
            //button valider
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 40,
                  bottom: 20,
                ),
                child: Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: a_vert,
                      padding: EdgeInsets.fromLTRB(129, 15, 129, 15),
                    ),
                    child: Text("valider inscription"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
