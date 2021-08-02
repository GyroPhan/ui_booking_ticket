import 'package:flutter/material.dart';
import 'package:ui_ticket_booking/constant.dart';

class LogoWidget extends StatelessWidget {
  final double logo_size;
  final double text_size;

  // ignore: use_key_in_widget_constructors
  LogoWidget({required this.logo_size, required this.text_size});
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          Image.asset(
            'assets/images/logo_icon.png',
            fit: BoxFit.fill,
            width: logo_size + 20,
            height: logo_size,
          ),
          Text(
            'GyroP Airlines',
            style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: text_size,
                color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
