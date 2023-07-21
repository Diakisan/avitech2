import 'package:avitch/widgets/categorySection.dart';
import 'package:avitch/widgets/eventpage.dart';
import 'package:avitch/widgets/headersection.dart';
import 'package:avitch/widgets/searchSection.dart';
import 'package:flutter/material.dart';

import '../theme/app_color.dart';

final List<String> items = <String>[
  'Choisissez la souche',
  'Chaire',
  'Locale',
  'Pondeuse',
];

class CyclePage extends StatefulWidget {
  const CyclePage({Key? key}) : super(key: key);

  @override
  State<CyclePage> createState() => _CyclePageState();
}

class _CyclePageState extends State<CyclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderSection(),
            const SearchSection(),
            CategorySection(),
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
                      Text("enrigistrer un evenement"),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EventPage()),
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
