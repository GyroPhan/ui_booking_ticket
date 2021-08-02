import 'package:flutter/material.dart';
import '../constant.dart';

class InputCustom extends StatelessWidget {
  IconData icon;
  Function(String?) onChanged;
  String? hintText;
  bool obscureText;
  InputCustom(
      {required this.icon,
      required this.onChanged,
      required this.hintText,
      required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                    border: Border(
                  right: BorderSide(color: Colors.grey, width: 0.5),
                  bottom: BorderSide(color: Colors.grey, width: 1),
                )),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    icon,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              Container(
                width: 250,
                height: 50,
                decoration: const BoxDecoration(
                    border: Border(
                  left: BorderSide(color: Colors.grey, width: 0.5),
                  bottom: BorderSide(color: Colors.grey, width: 1),
                )),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
//    controller: amountController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: obscureText,
                    style: TextStyle(color: kPrimaryColor, fontSize: 20),
                    decoration: InputDecoration(
                      hintText: hintText,
                      contentPadding: EdgeInsets.only(top: 5, bottom: 5),
                      hintStyle: TextStyle(color: kPrimaryColor),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    onChanged: onChanged,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
