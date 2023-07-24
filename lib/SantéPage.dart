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
              height: 160,
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
                "PROTOCOLE VACCINATION",
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
                  left: 38,
                  right: 38,
                  bottom: 20,
                ),
                color: Colors.black,
                height: 1,
              ),
            ),
            VaccinForm(namevaccin: 'Complexe vitamique', deadline: '1-5'),
            VaccinForm(namevaccin: 'Antiboitique', deadline: '10-13'),
            VaccinForm(
                namevaccin: 'Vaccin inactivé contre le new castle',
                deadline: '21'),
            VaccinForm(
                namevaccin: ' vaccin contre lavariole aviaire', deadline: '24'),
            VaccinForm(namevaccin: 'Antiparasitaires internes', deadline: '60'),
            VaccinForm(
                namevaccin: 'rapple vaccination variole', deadline: '75'),
          ],
        ),
      ),
    );
  }
}
