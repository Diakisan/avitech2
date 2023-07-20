import 'package:avitch/InfosPage.dart';
import 'package:avitch/Sant%C3%A9Page.dart';
import 'package:avitch/demarrage_page.dart';
import 'package:avitch/ventepage.dart';
import 'package:avitch/widgets/cyclepage.dart';
import 'package:avitch/widgets/menu_item.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'aliment_page.dart';

const a_orange = const Color(0xFFFFAA00);
const a_vert = const Color(0xFF2FB35A);

class Menu_Page extends StatelessWidget {
  const Menu_Page({Key? key}) : super(key: key);

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
          actions: [
            IconButton(
              alignment: Alignment.topRight,
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: 35,
              ),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
            ),
          ],
          backgroundColor: a_vert,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(65),
          )),
        ),
      ),
      body: GridView.count(
        physics: ScrollPhysics(),
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          MenuItem(
            title: "Démarrage",
            imageSrc: "img/menu1.png",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DemarragePage()),
              );
            },
          ),
          MenuItem(
            title: "Aliment",
            imageSrc: "img/CornM1.png",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlimentPage()),
              );
            },
          ),
          MenuItem(
            title: "Santé",
            imageSrc: "img/Treatment.png",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SantePage()),
              );
            },
          ),
          MenuItem(
            title: "Vente",
            imageSrc: "img/vente.png",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VentePage()),
              );
            },
          ),
          MenuItem(
            title: "Infos Utiles",
            imageSrc: "img/Infos.png",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InfosPage()),
              );
            },
          ),
          MenuItem(
            title: "Cycle",
            imageSrc: "img/GoodNotes.png",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CyclePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
