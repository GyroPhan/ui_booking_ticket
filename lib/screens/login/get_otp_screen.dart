import 'package:flutter/material.dart';
import 'package:ui_ticket_booking/screens/login/login_screen.dart';
import '../../constant.dart';
import '../home_screen.dart';
import '../../widgets/logo_wiget.dart';

// ignore: use_key_in_widget_constructors
class GetOTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const SizedBox(
                height: 80,
              ),
              const Text(
                'OTP send to your email!',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                width: 150,
                height: 60,
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(color: Colors.grey, width: 1),
                )),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
//    controller: amountController,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(color: kPrimaryColor, fontSize: 30),
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      hintText: 'OTP',
                      contentPadding: EdgeInsets.only(top: 5, bottom: 5),
                      hintStyle: TextStyle(
                        color: kPrimaryColor,
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
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
                  decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Center(
                      child: Text(
                    'Reset Password',
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
    );
  }
}
