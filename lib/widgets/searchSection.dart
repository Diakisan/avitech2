import 'package:flutter/material.dart';

const a_vert = const Color(0xFF2FB35A);
const a_orange = const Color(0xFFFFAA00);

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.28,
      child: Column(
        children: <Widget>[
          Flexible(
            child: Row(
              children: <Widget>[
                _buildStaCard("Effectif actuelle :", '1800', Colors.orange),
                _buildStaCard("Mortalité :", '200', Colors.orange),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: <Widget>[
                _buildStaCard("Effectif de départ :", '2000', Colors.orange),
                _buildStaCard("Vendu :", '0', Colors.orange),
                _buildStaCard("Souche:", 'chair', Colors.orange),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildStaCard(String title, String count, MaterialColor color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              count,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
