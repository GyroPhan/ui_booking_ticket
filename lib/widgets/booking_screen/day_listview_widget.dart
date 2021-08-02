import 'package:flutter/material.dart';

import '../../constant.dart';

class DayListViewWidget extends StatelessWidget {
  String dayDemo;
  String dateDemo;
  DayListViewWidget({required this.dayDemo, required this.dateDemo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 70,
        decoration: BoxDecoration(
            color: kMainColor,
            borderRadius: BorderRadius.all(Radius.circular(22)),
            border: Border.all(color: kPrimaryColor, width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              dayDemo,
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              dateDemo,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
