import 'package:avitch/deplayed_animation.dart';
import 'package:avitch/inscription_page.dart';
import 'package:avitch/menu_page.dart';
import 'package:flutter/material.dart';

const a_vert = const Color(0xFF2FB35A);
const a_orange = const Color(0xFFFFAA00);
const a_gray = const Color(0xFF666666);

class ConnexionPage extends StatelessWidget {
  const ConnexionPage({Key? key}) : super(key: key);

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
              Icons.arrow_back,
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
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1000,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 45,
                    bottom: 30,
                    left: 30,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Connectez-vous:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 1500,
                child: Container(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'E_mail',
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                      ),
                      hintText: "email",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: a_gray, width: 2.0),
                      ),
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 2000,
                child: Container(
                  width: 350,
                  margin: EdgeInsets.only(
                    top: 25,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'mot de passe',
                      prefixIcon: Icon(
                        Icons.lock_outline_sharp,
                        color: Colors.black,
                      ),
                      hintText: "mot de passe",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: a_gray, width: 2.0),
                      ),
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 25,
                    bottom: 20,
                    left: 32,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Mot de passe oublié ?",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: a_vert,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 2700,
                child: Container(
                  child: Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: a_vert,
                        padding: EdgeInsets.fromLTRB(129, 15, 129, 15),
                      ),
                      child: Text("CONNECTION"),
                      onPressed: () {
                        var push = Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Menu_Page()),
                        );
                      },
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 2700,
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
              DelayedAnimation(
                delay: 2700,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: a_orange,
                        padding: EdgeInsets.fromLTRB(35, 15, 35, 15),
                      ),
                      child: Text("CRÉE UN COMPTE"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InscriptionPage()),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
