import 'package:avitch/theme/app_color.dart';
import 'package:flutter/material.dart';

class JobItem extends StatelessWidget {
  final Widget? leadingIcon;
  final String? title;
  final String? tags;
  final String? location;
  final String? date;
  final String? type;

  const JobItem(
      {key,
      this.leadingIcon,
      this.title,
      this.tags,
      this.location,
      this.date,
      this.type});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 140,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Flexible(flex: 1, child: leadingIcon ?? const SizedBox()),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title ?? "",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        tags ?? "",
                        style: const TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Row(
                                children: [
                                  const Icon(Icons.location_on_outlined),
                                  Flexible(
                                    child: Text(
                                      location ?? "",
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Row(
                                children: [
                                  const Icon(Icons.timer_sharp),
                                  Flexible(
                                    child: Text(
                                      date ?? "",
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColor.primaryColor),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
