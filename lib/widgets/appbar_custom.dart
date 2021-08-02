import 'package:flutter/material.dart';
import 'package:ui_ticket_booking/data.dart';

import '../constant.dart';

class AppbarCustom extends StatelessWidget {
  IconData icon;
  Function() iconOnTap;
  Function() imageOnTap;
  Color iconColor;
  AppbarCustom(
      {required this.icon,
      required this.iconColor,
      required this.iconOnTap,
      required this.imageOnTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: iconOnTap,
            child: Icon(
              icon,
              color: iconColor,
              size: 40,
            ),
          ),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40 * 0.2),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('assets/images/flag.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40 * 0.2),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('assets/images/card.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: imageOnTap,
                child: Container(
                  width: 40,
                  height: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40 * 0.2),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.network(hung.image),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
