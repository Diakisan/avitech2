import 'package:avitch/theme/app_color.dart';
import 'package:flutter/material.dart';

class VaccinForm extends StatefulWidget {
  final String namevaccin;
  final String deadline;

  const VaccinForm({
    Key? key,
    required this.namevaccin,
    required this.deadline,
  }) : super(key: key);

  @override
  State<VaccinForm> createState() => _VaccinFormState();
}

class _VaccinFormState extends State<VaccinForm> {
  bool? ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //1
        Container(
          width: 350,
          margin: const EdgeInsets.only(
            top: 30,
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 3,
              color: Colors.grey,
            ),
            color: Colors.grey[100],
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Vaccin : ${widget.namevaccin ?? ""}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.left,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'avant le  ${widget.deadline ?? ""}jours ',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16,
                    ),
                  ),
                ),
                CheckboxListTile(
                  title: Text("Valider "),
                  value: ischecked,
                  activeColor: AppColor.secondaryColor,
                  contentPadding: EdgeInsets.all(0),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (newBool) {
                    setState(() {
                      ischecked = newBool;
                    });
                  },
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 10,
                  ),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Entrer le prix du vaccin:",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Prix',
                    hintText: "Prix",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide:
                          BorderSide(color: AppColor.grayColor, width: 2.0),
                    ),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(
                  //   top: 10,
                  //   bottom: 10,
                  //   left: 20,
                  // ),
                  child: Container(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: AppColor.primaryColor,
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                      ),
                      child: Row(
                        children: [
                          Text("valider"),
                        ],
                      ),
                      onPressed: () {
                        ;
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
