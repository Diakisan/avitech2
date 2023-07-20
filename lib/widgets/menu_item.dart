import 'package:avitch/theme/app_color.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String? title;
  final String? imageSrc;
  final void Function()? onTap;

  const MenuItem({Key? key, this.title, this.imageSrc, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(flex: 3, child: Image.asset(imageSrc ?? "")),
              Expanded(
                flex: 1,
                child: Text(
                  title ?? "",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.primaryColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
