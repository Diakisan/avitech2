import 'package:avitch/theme/app_color.dart';
import 'package:avitch/widgets/vaccin_form.dart';
import 'package:flutter/material.dart';

class SantePage extends StatefulWidget {
  const SantePage({Key? key}) : super(key: key);

  @override
  State<SantePage> createState() => _SantePageState();
}

class _SantePageState extends State<SantePage> {
  bool? ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(170.0),
        //augmente la taille de ApppBar
        child: AppBar(
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(60)),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/2.png'),
                  fit: BoxFit.contain,
                ),
              ),
              height: 170,
            ),
          ),
          elevation: 0,
          backgroundColor: AppColor.primaryColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(75),
                  bottomRight: Radius.circular(75))),
          leading: IconButton(
            icon: const Icon(
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
              margin: const EdgeInsets.only(
                top: 20,
              ),
              alignment: Alignment.center,
              child: const Text(
                "SANTE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: AppColor.primaryColor,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(
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
              child: Column(
                children: [
                  Container(
                    width: 350,
                    margin: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            top: 30,
                            bottom: 10,
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Entrer le numéro de bande:",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          child: const TextField(
                            decoration: InputDecoration(
                              labelText: 'N°arrivage',
                              hintText: "N°arrivage",
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(
                                    color: AppColor.grayColor, width: 2.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            VaccinForm(namevaccin: 'nana', deadline: '14'),
            VaccinForm(namevaccin: 'nana', deadline: '14'),
            VaccinForm(namevaccin: 'nana', deadline: '14'),
          ],
        ),
      ),
    );
  }
}
