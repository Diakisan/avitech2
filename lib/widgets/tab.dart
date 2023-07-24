import 'package:flutter/material.dart';

class Tableau_one extends StatelessWidget {
  const Tableau_one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowColor: MaterialStateColor.resolveWith(
        (states) {
          return Color(0xFF2FB35A);
        },
      ),
      dataRowColor: MaterialStateColor.resolveWith(
        (states) {
          return Color(0xFFE0E0E0);
        },
      ),
      columns: [
        DataColumn(
          label: Expanded(
            child: Text(
              'Cout de l”aliment',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Prix achat des poussins',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text(
            '000',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
          DataCell(Text(
            '000',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
        ]),
      ],
    );
  }
}

class Tableau_two extends StatelessWidget {
  const Tableau_two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowColor: MaterialStateColor.resolveWith(
        (states) {
          return Color(0xFF2FB35A);
        },
      ),
      dataRowColor: MaterialStateColor.resolveWith(
        (states) {
          return Color(0xFFE0E0E0);
        },
      ),
      columns: [
        DataColumn(
          label: Expanded(
            child: Text(
              'Autres dépense',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Cout des soins et vaccins',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text(
            '000',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
          DataCell(Text(
            '000',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
        ]),
      ],
    );
  }
}

class Tableau_three extends StatelessWidget {
  const Tableau_three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowColor: MaterialStateColor.resolveWith(
        (states) {
          return Color(0xFF2FB35A);
        },
      ),
      dataRowColor: MaterialStateColor.resolveWith(
        (states) {
          return Color(0xFFE0E0E0);
        },
      ),
      columns: [
        DataColumn(
          label: Expanded(
            child: Text(
              'Cout total',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text(
            '000',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
        ]),
      ],
    );
  }
}

class Tableau_p extends StatelessWidget {
  const Tableau_p({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      dataRowColor: MaterialStateColor.resolveWith(
        (states) {
          return Color(0xFFB1B1B1);
        },
      ),
      columns: [
        DataColumn(
          label: Expanded(
            child: Text(
              "Prix de revient d'un poulet :",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text(
            '000',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
        ]),
      ],
    );
  }
}

class tabcons extends StatelessWidget {
  const tabcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowColor: MaterialStateColor.resolveWith(
        (states) {
          return Color(0xFFE0E0E0);
        },
      ),
      dataRowColor: MaterialStateColor.resolveWith(
        (states) {
          return Color(0xFFE0E0E0);
        },
      ),
      columns: [
        DataColumn(
          label: Expanded(
            child: Text(
              'Date de consomation',
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Quantité (kg)',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'N° de '
              'production',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text(
            '25-07-2023',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
          DataCell(Text(
            '20 ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
          DataCell(Text(
            '13',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
        ]),
      ],
    );
  }
}

class TableauSante extends StatelessWidget {
  const TableauSante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowColor: MaterialStateColor.resolveWith(
        (states) {
          return Color(0xFFE0E0E0);
        },
      ),
      dataRowColor: MaterialStateColor.resolveWith(
        (states) {
          return Color(0xFFE0E0E0);
        },
      ),
      columns: [
        DataColumn(
          label: Expanded(
            child: Text(
              'Age poussin',
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Traitement',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Prix',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text(
            '01',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
          DataCell(Text(
            'Complexe vitamique',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
          DataCell(Text(
            '10000',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          )),
        ]),
      ],
    );
  }
}
