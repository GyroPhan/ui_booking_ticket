import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../widgets/logo_wiget.dart';
import '../../widgets/input_custom.dart';
import 'get_otp_screen.dart';

class ResetPassScreen extends StatelessWidget {
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
                  hintText: 'New Password',
                  obscureText: true),
              const SizedBox(
                height: 20,
              ),
              InputCustom(
                  icon: Icons.lock_open_rounded,
                  onChanged: (value) {},
                  hintText: 'Repeat New Password',
                  obscureText: true),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GetOTPScreen()),
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
                    'Get OTP',
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
