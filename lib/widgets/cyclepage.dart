import 'package:avitch/widgets/categorySection.dart';
import 'package:avitch/widgets/headersection.dart';
import 'package:avitch/widgets/searchSection.dart';
import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}
