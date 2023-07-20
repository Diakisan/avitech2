import 'package:avitch/alimentP_page.dart';
import 'package:avitch/theme/app_color.dart';
import 'package:flutter/material.dart';

class AlimentPage extends StatelessWidget {
  const AlimentPage({Key? key}) : super(key: key);

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
              alignment: Alignment.centerLeft,
              child: Container(
                width: 350,
                margin: EdgeInsets.only(
                  top: 20,
                  left: 30,
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
            //Quantité
            Container(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 350,
                margin: EdgeInsets.only(
                  top: 25,
                  left: 30,
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
                          ;
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
