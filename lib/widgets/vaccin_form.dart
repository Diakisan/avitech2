import 'package:avitch/theme/app_color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class VaccinForm extends StatefulWidget {
  final String namevaccin;
  final String deadline;

  const VaccinForm({
    Key? key,
    required this.namevaccin,
    required this.deadline,
  }) : super(key: key);

  @override
  State<VaccinForm> createState() => _VaccinFormState();
}

class _VaccinFormState extends State<VaccinForm> {
  bool? ischecked = false;
  TextEditingController _prix_vaccin = TextEditingController();
  var db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //1
        Container(
          width: 350,
          margin: const EdgeInsets.only(
            top: 30,
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 3,
              color: Colors.grey,
            ),
            color: Colors.grey[100],
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'traitement: ${widget.namevaccin ?? ""}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Age  ${widget.deadline ?? ""}jours ',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                    ),
                  ),
                ),
                CheckboxListTile(
                  title: Text("Valider "),
                  value: ischecked,
                  activeColor: AppColor.secondaryColor,
                  contentPadding: EdgeInsets.all(0),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (newBool) {
                    setState(() {
                      ischecked = newBool;
                    });
                  },
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Entrer le prix du vaccin:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextField(
                  controller: _prix_vaccin,
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
                Container(
                  // margin: EdgeInsets.only(
                  //   top: 10,
                  //   bottom: 10,
                  //   left: 20,
                  // ),
                  child: Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: AppColor.primaryColor,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      ),
                      child: Row(
                        children: [
                          Text("valider"),
                        ],
                      ),
                      onPressed: () {
                        db.collection("consomation_poulet").add({
                          "prix du vaccin": _prix_vaccin.text,
                        }).then((value) {
                          showDialog(
                              barrierDismissible: true,
                              context: context,
                              builder: (_) {
                                return Dialog(
                                  backgroundColor: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
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
                                              _prix_vaccin.text = "";

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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
