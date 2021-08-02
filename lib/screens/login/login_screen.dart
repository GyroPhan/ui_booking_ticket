import 'package:flutter/material.dart';
import 'package:ui_ticket_booking/screens/login/registration_screen.dart';
import '../../constant.dart';
import '../../widgets/logo_wiget.dart';
import '../../widgets/input_custom.dart';
import 'reset_pass_screen.dart';
import '../home_screen.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LogoWidget(
            logo_size: 100,
            text_size: 20,
          ),
          const SizedBox(
            height: 40,
          ),
          InputCustom(
            icon: Icons.alternate_email,
            hintText: 'Email',
            obscureText: false,
            onChanged: (value) {},
          ),
          InputCustom(
            icon: Icons.lock_open_rounded,
            hintText: 'Password',
            obscureText: true,
            onChanged: (value) {},
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResetPassScreen()),
              );
            },
            child: const Text(
              'Forget Password?',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Container(
              width: 300,
              height: 60,
              decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Center(
                  child: Text(
                'Log in',
                style: TextStyle(
                    color: kMainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Not a menmber?',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationScreen()),
                  );
                },
                child: const Text(
                  'Join now',
                  style: TextStyle(fontSize: 14, color: kPrimaryColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
