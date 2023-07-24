import 'package:avitch/theme/app_color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final List<String> items = <String>[
  "Type d'aliment'",
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

class AlimentationPPage extends StatefulWidget {
  const AlimentationPPage({Key? key}) : super(key: key);

  @override
  State<AlimentationPPage> createState() => _AlimentationPPageState();
}

class _AlimentationPPageState extends State<AlimentationPPage> {
  TextEditingController _Nproduction = TextEditingController();
  TextEditingController _origine = TextEditingController();
  TextEditingController _nature = TextEditingController();
  TextEditingController _nonfourn = TextEditingController();
  TextEditingController _coutproc = TextEditingController();
  TextEditingController _quantite_p = TextEditingController();
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
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              alignment: Alignment.center,
              child: Text(
                "PRODUCTION D'ALIMENT",
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
            //n°production
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 350,
                margin: EdgeInsets.only(
                  top: 40,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Entrer un numéro de production:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      child: TextField(
                        controller: _Nproduction,
                        decoration: InputDecoration(
                          labelText: 'Numero de production',
                          hintText: "N°Production",
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: AppColor.grayColor, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //origine
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 350,
                margin: EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Entrer l'origine de la production:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      child: TextField(
                        controller: _origine,
                        decoration: InputDecoration(
                          labelText: 'Origine',
                          hintText: "Originne",
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: AppColor.grayColor, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //nature
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 350,
                margin: EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Entrer la nature:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      child: TextField(
                        controller: _nature,
                        decoration: InputDecoration(
                          labelText: 'Nature',
                          hintText: "Nature",
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: AppColor.grayColor, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(
                top: 25,
                left: 30,
                right: 30,
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 10,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Entrer  le type de aliment produit",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  DropDownDemo(),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 350,
                margin: EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Entrer le nom du fournisseur:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      child: TextField(
                        controller: _Nproduction,
                        decoration: InputDecoration(
                          labelText: 'Nom du fournisseur',
                          hintText: "Nom du fournisseur",
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: AppColor.grayColor, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 350,
                margin: EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Entrer le cout de production:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      child: TextField(
                        controller: _coutproc,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Prix',
                          hintText: "Prix",
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: AppColor.grayColor, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 350,
                margin: EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: 10,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Entrer la quantité produit en kg:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      child: TextField(
                        controller: _quantite_p,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Quantité',
                          hintText: "Quantité",
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: AppColor.grayColor, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                  ],
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
                          db.collection("Aliment_produit").add({
                            "numero_de_production": _Nproduction.text,
                            "origine_poulet": _origine.text,
                            "nature": _nature.text,
                            "nom fournisseur": _nonfourn.text,
                            "cout production": _coutproc.text,
                            "quantitté_p": _quantite_p.text,
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
                                                _Nproduction.text = "";
                                                _origine.text = "";
                                                _nature.text = "";
                                                _nonfourn.text = "";
                                                _coutproc.text = "";
                                                _quantite_p.text = "";
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
