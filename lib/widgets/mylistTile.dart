import 'package:avitch/widgets/tab.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String? title;
  final String? subtitle;

  const MyListTile({
    Key? key,
    required this.iconImagePath,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      childrenPadding: const EdgeInsets.only(top: 10, bottom: 10),
      leading: Image.asset(iconImagePath),
      title: Text(
        title ?? "",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        subtitle ?? "",
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey[600],
        ),
      ),
      children: [
        tabcons(),
      ],
    );
  }
}
