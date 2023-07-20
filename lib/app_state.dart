//import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider, PhoneAuthProvider;
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'product.dart';

class ApplicationState extends ChangeNotifier {
  ApplicationState() {
    init();
  }

  //bool _loggedIn = false;
  //bool get loggedIn => _loggedIn;
  StreamSubscription<QuerySnapshot>? _productsSubscription;
  List<Product> _products = [];
  List<Product> get products => _products;

  Future<void> init() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,);

   /*  FirebaseUIAuth.configureProviders([
      EmailAuthProvider(),
    ]); */

    /* FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        _loggedIn = true;
      } else {
        _loggedIn = false;
      }
      notifyListeners();
    }); */
_productsSubscription = FirebaseFirestore.instance
            .collection('produits')
            .snapshots()
            .listen((snapshot) {
          _products = [];
          for (final document in snapshot.docs) {
            _products.add(
                Product(
                  id: document.data()['name'] as int, 
                  lib: document.data()['lib'] as String, 
                  prix: document.data()['prix'] as int,
                  )
            );
          }

  });
  }
}