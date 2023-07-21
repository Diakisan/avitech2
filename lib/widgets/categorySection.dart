import 'package:avitch/widgets/mylistTile.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: const Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Column(
            children: [
              Center(
                child: Text(
                  'BILAN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              MyListTile(
                iconImagePath: 'img/Flour.png',
                title: "Consomation d'aliment",
                subtitle: "Le bilan de l'aliment consommer  . ",
              ),
              MyListTile(
                iconImagePath: 'img/Syringe.png',
                title: "Vacinnation et soins",
                subtitle: "Le bilan des vaccin par la bande  .",
              ),
              MyListTile(
                iconImagePath: 'img/Plus.png',
                title: "Maladie enregistrer",
                subtitle: "Le bilan des soins effectuer    .   ",
              ),
              MyListTile(
                iconImagePath: 'img/Scroll.png',
                title: "Autre evenement",
                subtitle: " Les autres evenement produit",
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
