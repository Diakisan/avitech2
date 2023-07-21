import 'package:avitch/theme/app_color.dart';
import 'package:flutter/material.dart';

final List<String> items = <String>[
  'Choisissez la souche',
  'Chaire',
  'Locale',
  'Pondeuse',
];

class DropDownDemo extends StatefulWidget {
  @override
  _DropDownDemoState createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {
  String? dropdownValue = items.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,

      hint: Text('City'),
      //elevation: 5,
      style: TextStyle(color: Colors.black),

      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),

      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }
}

class InfosPage extends StatefulWidget {
  const InfosPage({Key? key}) : super(key: key);

  @override
  State<InfosPage> createState() => _InfosPageState();
}

class _InfosPageState extends State<InfosPage> {
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
              height: 160,
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
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              alignment: Alignment.center,
              child: Text(
                "INFOS UTILES",
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
                  bottom: 20,
                ),
                color: Colors.black,
                height: 1,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(
                top: 25,
                left: 30,
                bottom: 25,
              ),
              child: DropDownDemo(),
            ),
            const ExpansionTile(
              leading: Icon(
                Icons.info_outline,
                color: AppColor.secondaryColor,
              ),
              title: Text(
                'Alimentation',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

// Contents
              children: [
                ListTile(
                    title: Text(
                        "L'engraissement commence quand les poulets ont 1 mois et dure au moins 4 semaines. Durant l'engraissement des volailles, on cherche à obtenir une consommation plus importante d'aliment. La teneur en énergie de l'alimentation prend le pas sur celle en protéine.")),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                Icons.info_outline,
                color: AppColor.secondaryColor,
              ),
              title: Text(
                'Maladie',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

// Contents
              children: [
                ListTile(
                    title: Text(
                        "L'engraissement commence quand les poulets ont 1 mois et dure au moins 4 semaines. Durant l'engraissement des volailles, on cherche à obtenir une consommation plus importante d'aliment. La teneur en énergie de l'alimentation prend le pas sur celle en protéine.")),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                Icons.info_outline,
                color: AppColor.secondaryColor,
              ),
              title: Text(
                'Densité',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

// Contents
              children: [
                ListTile(
                    title: Text(
                        "L'engraissement commence quand les poulets ont 1 mois et dure au moins 4 semaines. Durant l'engraissement des volailles, on cherche à obtenir une consommation plus importante d'aliment. La teneur en énergie de l'alimentation prend le pas sur celle en protéine.")),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                Icons.info_outline,
                color: AppColor.secondaryColor,
              ),
              title: Text(
                'Chauffage',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

// Contents
              children: [
                ListTile(
                    title: Text(
                        "L'engraissement commence quand les poulets ont 1 mois et dure au moins 4 semaines. Durant l'engraissement des volailles, on cherche à obtenir une consommation plus importante d'aliment. La teneur en énergie de l'alimentation prend le pas sur celle en protéine.")),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                Icons.info_outline,
                color: AppColor.secondaryColor,
              ),
              title: Text(
                'Litier',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

// Contents
              children: [
                ListTile(
                    title: Text(
                        "L'engraissement commence quand les poulets ont 1 mois et dure au moins 4 semaines. Durant l'engraissement des volailles, on cherche à obtenir une consommation plus importante d'aliment. La teneur en énergie de l'alimentation prend le pas sur celle en protéine.")),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                Icons.info_outline,
                color: AppColor.secondaryColor,
              ),
              title: Text(
                'Ventilation',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

// Contents
              children: [
                ListTile(
                    title: Text(
                        "L'engraissement commence quand les poulets ont 1 mois et dure au moins 4 semaines. Durant l'engraissement des volailles, on cherche à obtenir une consommation plus importante d'aliment. La teneur en énergie de l'alimentation prend le pas sur celle en protéine.")),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                Icons.info_outline,
                color: AppColor.secondaryColor,
              ),
              title: Text(
                'Lumière',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

// Contents
              children: [
                ListTile(
                    title: Text(
                        "L'engraissement commence quand les poulets ont 1 mois et dure au moins 4 semaines. Durant l'engraissement des volailles, on cherche à obtenir une consommation plus importante d'aliment. La teneur en énergie de l'alimentation prend le pas sur celle en protéine.")),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                Icons.info_outline,
                color: AppColor.secondaryColor,
              ),
              title: Text(
                'Eau',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

// Contents
              children: [
                ListTile(
                    title: Text(
                        "L'engraissement commence quand les poulets ont 1 mois et dure au moins 4 semaines. Durant l'engraissement des volailles, on cherche à obtenir une consommation plus importante d'aliment. La teneur en énergie de l'alimentation prend le pas sur celle en protéine.")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
