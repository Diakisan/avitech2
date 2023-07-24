import 'package:avitch/alimentP_page.dart';
import 'package:avitch/theme/app_color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class AlimentPage extends StatefulWidget {
  const AlimentPage({Key? key}) : super(key: key);

  @override
  State<AlimentPage> createState() => _AlimentPageState();
}

class _AlimentPageState extends State<AlimentPage> {
  TextEditingController _arrivage_A = TextEditingController();
  TextEditingController _productioA = TextEditingController();
  TextEditingController _quantiteA = TextEditingController();
  TextEditingController _date_A = TextEditingController();
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
                "CONSOMMATION",
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
              child: Column(
                children: [
                  Container(
                    width: 350,
                    margin: EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: 30,
                            bottom: 10,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Entrer le numéro de bande:",
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
                            controller: _arrivage_A,
                            decoration: InputDecoration(
                              labelText: 'N°arrivage',
                              hintText: "N°arrivage",
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
                ],
              ),
            ),
            //N production
            Container(
              alignment: Alignment.center,
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
                        "Entrer le numéro de production de l'aliment:",
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
                        controller: _productioA,
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
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 350,
                margin: EdgeInsets.only(
                  top: 25,
                  left: 30,
                  right: 30,
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
                      _date_A.text = value.toString();
                    });
                    print(value);
                  },
                ),
              ),
            ),
            //Quantité
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 350,
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
                        "Saisir la consomation en kg :",
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
                        keyboardType: TextInputType.number,
                        controller: _quantiteA,
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
            //boutton
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
                          db.collection("consomation_poulet").add({
                            "arrivage_conso": _arrivage_A.text,
                            "production_conso": _productioA.text,
                            "quantité_conso": _quantiteA.text,
                            "date_conso": _date_A.text,
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
                                                _arrivage_A.text = "";
                                                _productioA.text = "";
                                                _quantiteA.text = "";
                                                _date_A.text = "";

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
            Container(
              child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AppColor.secondaryColor,
                    padding: EdgeInsets.fromLTRB(19, 15, 19, 15),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      Text("produire de aliment"),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AlimentationPPage()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
