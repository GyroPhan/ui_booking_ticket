import 'package:flutter/material.dart';

import '../../constant.dart';

class RouteType extends StatelessWidget {
  String text;
  Function() onTap;
  bool isLast;
  bool isChoice;
  RouteType(
      {required this.text,
      required this.onTap,
      required this.isLast,
      required this.isChoice});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                right: isLast
                    ? BorderSide(color: kMainColor, width: 0)
                    : BorderSide(color: Colors.grey, width: 1),
                bottom: BorderSide(color: Colors.grey, width: 1))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            text,
            style: TextStyle(
                color: isChoice ? kPrimaryColor : Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
        ),
      ),
    );
  }
}
