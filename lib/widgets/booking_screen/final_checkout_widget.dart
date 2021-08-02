import 'package:flutter/material.dart';

import '../../constant.dart';

class FlightFinalInfoWidget extends StatelessWidget {
  String firstInfo;
  String firstLableInfo;
  String secondInfo;
  String secondLabelInfo;
  String thristInfo;
  String thristLableInfo;
  Color infoColor;
  Color lableColor;
  FlightFinalInfoWidget(
      {required this.firstInfo,
      required this.firstLableInfo,
      required this.secondInfo,
      required this.secondLabelInfo,
      required this.thristInfo,
      required this.thristLableInfo,
      this.infoColor = kPrimaryColor,
      this.lableColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                firstInfo,
                style: TextStyle(fontSize: 20, color: infoColor),
              ),
              Text(
                firstLableInfo,
                style: TextStyle(fontSize: 10, color: lableColor),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                secondInfo,
                style: TextStyle(fontSize: 20, color: infoColor),
              ),
              Text(
                secondLabelInfo,
                style: TextStyle(fontSize: 10, color: lableColor),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                thristInfo,
                style: TextStyle(fontSize: 20, color: infoColor),
              ),
              Text(
                thristLableInfo,
                style: TextStyle(fontSize: 10, color: lableColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
