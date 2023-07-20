import 'package:avitch/connexion.dart';
import 'package:avitch/menu_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

import 'package:avitch/welcome_page.dart';
 const a_vert = const Color(0xFF2FB35A );
 const a_orange = const Color(0xFFFFAA00);
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MyApp());
}
  class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);
   @override
    Widget build(BuildContext context) {
     return MaterialApp(
       title: 'Avitech',
       debugShowCheckedModeBanner: false,
       home: StreamBuilder(
         stream: FirebaseAuth.instance
  .authStateChanges(),
         
         builder: (context, userSnapshot) {
          if(userSnapshot.hasData) {
            return const Menu_Page();
          } 
           //return WelcomePage();
           return const ConnexionPage();
         }
       ),

     );

   }

}