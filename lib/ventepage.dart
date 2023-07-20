import 'package:avitch/widgets/tab.dart';
import 'package:flutter/material.dart';

import '../theme/app_color.dart';

class VentePage extends StatelessWidget {
  const VentePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TableRow buildRow(List<String> cells) => TableRow(
          children: cells.map((cell) {
            return Padding(
              padding: const EdgeInsets.all(12),
              child: Center(
                child: Text(cell),
              ),
            );
          }).toList(),
        );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(170.0),
        //augmente la taille de ApppBar
        child: AppBar(
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(60)),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/2.png'),
                  fit: BoxFit.contain,
                ),
              ),
              height: 170,
            ),
          ),
          elevation: 0,
          backgroundColor: AppColor.primaryColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(75),
                  bottomRight: Radius.circular(75))),
          leading: IconButton(
            icon: const Icon(
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
              margin: const EdgeInsets.only(
                top: 20,
              ),
              alignment: Alignment.center,
              child: const Text(
                "VENTE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: AppColor.primaryColor,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 15,
                  left: 40,
                  right: 40,
                  bottom: 20,
                ),
                color: Colors.black,
                height: 1,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Container(
                    width: 350,
                    margin: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 30,
                            bottom: 10,
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Text(
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
                          child: const TextField(
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
            //tableau
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              padding: const EdgeInsets.all(25),
              child: const Column(
                children: [
                  Tableau_one(),
                  Tableau_two(),
                  Tableau_three(),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              child: const Tableau_p(),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 350,
                margin: const EdgeInsets.only(
                  top: 20,
                  left: 30,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Nombre de poulet vendu:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      child: const TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Nombre de poulet',
                          hintText: "Nombre de poulet",
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
                    margin: const EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                      left: 30,
                    ),
                    child: Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: AppColor.primaryColor,
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                        ),
                        child: const Row(
                          children: [
                            Text("Enregistrer"),
                          ],
                        ),
                        onPressed: () {
                          ;
                        },
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                      right: 30,
                    ),
                    child: Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: AppColor.secondaryColor,
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                        ),
                        child: const Row(
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
