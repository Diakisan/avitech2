/*import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final CollectionReference _chickenStripsCollection =
  FirebaseFirestore.instance.collection('chicken_strips');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firestore CRUD Example - Chicken Strips'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => createChickenStrip(),
              child: Text('Ajouter une bande de poulet'),
            ),
            ElevatedButton(
              onPressed: () => readChickenStrips(),
              child: Text('Lire les bandes de poulet'),
            ),
            ElevatedButton(
              onPressed: () => updateChickenStrip(),
              child: Text('Mettre à jour une bande de poulet'),
            ),
            ElevatedButton(
              onPressed: () => deleteChickenStrip(),
              child: Text('Supprimer une bande de poulet'),
            ),
          ],
        ),
      ),
    );
  }

  // Createddddddddddddvf
  Future<void> createChickenStrip() async {
    try {
      await _chickenStripsCollection.add({
        'name': 'Chicken Strip 1',
        'flavor': 'BBQ',
        'price': 10.99,
      });
      print('Bande de poulet ajoutée avec succès !');
    } catch (e) {
      print('Erreur lors de l\'ajout de la bande de poulet : $e');
    }
  }

  // Read
  Future<void> readChickenStrips() async {
    try {
      QuerySnapshot querySnapshot = await _chickenStripsCollection.get();
      for (var doc in querySnapshot.docs) {
        print('ID : ${doc.id}, Nom : ${doc['name']}, Saveur : ${doc['flavor']}, Prix : ${doc['price']}');
      }
    } catch (e) {
      print('Erreur lors de la lecture des bandes de poulet : $e');
    }
  }

  // Update
  Future<void> updateChickenStrip() async {
    try {
      QuerySnapshot querySnapshot =
      await _chickenStripsCollection.where('name', isEqualTo: 'Chicken Strip 1').get();
      for (var doc in querySnapshot.docs) {
        await _chickenStripsCollection.doc(doc.id).update({'price': 12.99});
        print('Bande de poulet mise à jour avec succès !');
      }
    } catch (e) {
      print('Erreur lors de la mise à jour de la bande de poulet : $e');
    }
  }

  // Delete
  Future<void> deleteChickenStrip() async {
    try {
      QuerySnapshot querySnapshot =
      await _chickenStripsCollection.where('name', isEqualTo: 'Chicken Strip 1').get();
      for (var doc in querySnapshot.docs) {
        await _chickenStripsCollection.doc(doc.id).delete();
        print('Bande de poulet supprimée avec succès !');
      }
    } catch (e) {
      print('Erreur lors de la suppression de la bande de poulet : $e');
        }
      }
}*/
