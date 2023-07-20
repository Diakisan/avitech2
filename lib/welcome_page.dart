import 'package:avitch/main_old.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'deplayed_animation.dart';
import 'connexion.dart';
const a_orange = const Color(0xFFFFAA00);
const a_vert = const Color(0xFF2FB35A );


class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: a_vert,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500,
                child: Container(
                  height: 400,
                  child: Image.asset('img/2.png'),
              ),
              ),
              DelayedAnimation(
                delay: 2000,
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 30,
                  ),
                  child: Text("Bienvenu sur Applicaton avitech",
                    textAlign:TextAlign.center ,
                    style: TextStyle (
                      color: Colors.white70,
                      fontSize: 24,
                      fontFamily: 'Pacifico' ,
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 2500,
                child: Container(
                  child: Container(
                    width: double.infinity ,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: a_orange,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.all(15)
                      ),
                      child:Text("Démarrer l'application ",
                      style: TextStyle(
                      fontFamily: 'Pacifico',
                      ),),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConnexionPage(),
                            ),
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

