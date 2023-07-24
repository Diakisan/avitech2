import 'package:avitch/theme/app_color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

final List<String> items = <String>[
  'Choisissez la souche',
  'Chaire',
  'Locale',
  'Pondeuse',
];

class DropDownDemo extends StatefulWidget {
  @override
  _DropDownDemoState createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {
  String? _chosenValue = items.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _chosenValue,
      //elevation: 5,
      style: TextStyle(color: Colors.black),

      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: Text(
        "Please choose a langauage",
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
      ),
      onChanged: (String? value) {
        setState(() {
          _chosenValue = value!;
        });
      },
    );
  }
}

class DemarragePage extends StatefulWidget {
  const DemarragePage({Key? key}) : super(key: key);

  @override
  State<DemarragePage> createState() => _DemarragePageState();
}

class _DemarragePageState extends State<DemarragePage> {
  TextEditingController _arivvage = TextEditingController();
  TextEditingController _effectifD = TextEditingController();
  TextEditingController _prixD = TextEditingController();
  TextEditingController _nomfourD = TextEditingController();
  TextEditingController _adrFourD = TextEditingController();
  TextEditingController _date_D = TextEditingController();
  var db = FirebaseFirestore.instance;

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
              height: 160,
            ),
          ),
          elevation: 0,
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(75),
                  bottomRight: Radius.circular(75))),
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
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              alignment: Alignment.center,
              child: Text(
                "NOUVELLE BANDE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: AppColor.primaryColor,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 15,
                  left: 40,
                  right: 40,
                ),
                color: Colors.black,
                height: 1,
              ),
            ),
            //arrivage
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 250,
                margin: EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                ),
                child: TextField(
                  controller: _arivvage,
                  decoration: InputDecoration(
                    labelText: 'N°arrivage',
                    hintText: "N°arrivage",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide:
                          BorderSide(color: AppColor.grayColor, width: 2.0),
                    ),
                  ),
                ),
              ),
            ),
            //effectif
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 250,
                margin: EdgeInsets.only(
                  top: 25,
                  left: 30,
                  right: 30,
                ),
                child: TextField(
                  controller: _effectifD,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Effectif',
                    hintText: "Effectif",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide:
                          BorderSide(color: AppColor.grayColor, width: 2.0),
                    ),
                  ),
                ),
              ),
            ),
            //prix
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 250,
                margin: EdgeInsets.only(
                  top: 25,
                  left: 30,
                ),
                child: TextField(
                  controller: _prixD,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Prix',
                    hintText: "Prix",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide:
                          BorderSide(color: AppColor.grayColor, width: 2.0),
                    ),
                  ),
                ),
              ),
            ),
            //souche

            //date
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 250,
                margin: EdgeInsets.only(
                  top: 30,
                  left: 30,
                ),
                child: DateTimeFormField(
                  decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.black45),
                    errorStyle: TextStyle(color: Colors.redAccent),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.event_note),
                    labelText: ' Date ',
                  ),
                  mode: DateTimeFieldPickerMode.date,
                  autovalidateMode: AutovalidateMode.always,
                  validator: (e) => (e?.day ?? 0) == 1
                      ? 'Entrer votre date de naissance'
                      : null,
                  onDateSelected: (DateTime value) {
                    setState(() {
                      _date_D.text = value.toString();
                    });
                    print(value);
                  },
                ),
              ),
            ),
            //nom fourniseur
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 350,
                margin: EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                ),
                child: TextField(
                  controller: _nomfourD,
                  decoration: InputDecoration(
                    labelText: 'Nom du fournisseur',
                    hintText: "NFournisseur",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide:
                          BorderSide(color: AppColor.grayColor, width: 2.0),
                    ),
                  ),
                ),
              ),
            ),
            //Adresse du fournisseur
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 350,
                margin: EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                ),
                child: TextField(
                  controller: _adrFourD,
                  decoration: InputDecoration(
                    labelText: 'Adresse du fournisseur',
                    hintText: "AFournisseur",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide:
                          BorderSide(color: AppColor.grayColor, width: 2.0),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                      left: 30,
                    ),
                    child: Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: AppColor.primaryColor,
                          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        ),
                        child: Row(
                          children: [
                            Text("Enregistrer"),
                          ],
                        ),
                        onPressed: () {
                          db.collection("Demarrage_poulet").add({
                            "date": _date_D.text,
                            "arrivage": _arivvage.text,
                            "effectif": _effectifD.text,
                            "prix_demarage": _prixD.text,
                            "nom_fournisseur": _nomfourD.text,
                            "adresse_fournisseur": _adrFourD.text,
                          }).then((value) {
                            showDialog(
                                barrierDismissible: true,
                                context: context,
                                builder: (_) {
                                  return Dialog(
                                    backgroundColor: Colors.white,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          // The loading indicator
                                          const Icon(
                                            Icons.check_circle,
                                            size: 100,
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          // Some text
                                          Text("Enregistré avec succés"),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          ElevatedButton(
                                              onPressed: () {
                                                _arivvage.text = "";
                                                _effectifD.text = "";
                                                _nomfourD.text = "";
                                                _prixD.text = "";
                                                _date_D.text = "";
                                                _adrFourD.text = "";
                                                Navigator.of(context).pop();
                                              },
                                              child: Text("ok"))
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                      right: 30,
                    ),
                    child: Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: AppColor.secondaryColor,
                          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                        ),
                        child: Row(
                          children: [
                            Text("Annuler"),
                          ],
                        ),
                        onPressed: () {
                          ;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
