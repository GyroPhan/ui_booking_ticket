import 'package:flutter/material.dart';
import 'package:ui_ticket_booking/constant.dart';
import 'package:ui_ticket_booking/screens/login/login_screen.dart';
import 'package:ui_ticket_booking/widgets/input_custom.dart';
import 'package:ui_ticket_booking/widgets/logo_wiget.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Scaffold(
        backgroundColor: kMainColor,
        appBar: AppBar(
          backgroundColor: kMainColor,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LogoWidget(
                  logo_size: 100,
                  text_size: 20,
                ),
                SizedBox(
                  height: 40,
                ),
                InputCustom(
                    icon: Icons.alternate_email,
                    onChanged: (value) {},
                    hintText: 'Email',
                    obscureText: false),
                const SizedBox(
                  height: 20,
                ),
                InputCustom(
                    icon: Icons.lock_open_rounded,
                    onChanged: (value) {},
                    hintText: 'Password',
                    obscureText: true),
                const SizedBox(
                  height: 20,
                ),
                InputCustom(
                    icon: Icons.lock_open_rounded,
                    onChanged: (value) {},
                    hintText: 'Repeat Password',
                    obscureText: true),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Container(
                    width: 300,
                    height: 60,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                        child: Text(
                      'Register',
                      style: TextStyle(
                          color: kMainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
