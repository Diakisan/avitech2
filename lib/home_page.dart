import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';
import 'product.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
   MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ApplicationState>(
        builder: (context, appState, _) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${appState.products.length}'),
            ));
  }
}
