import 'package:flutter/material.dart';
import 'package:ui_ticket_booking/constant.dart';
import 'package:ui_ticket_booking/screens/boarding_pass.dart';
import 'package:ui_ticket_booking/screens/login/login_screen.dart';
import '../data.dart';
import '../widgets/logo_wiget.dart';

class UserInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kMainColor,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
            size: 30,
          ),
        ),
        title: Center(
          child: LogoWidget(
            logo_size: 20,
            text_size: 12,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: const Icon(
              Icons.logout_outlined,
              size: 30,
              color: kPrimaryColor,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40 * 0.2),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.network(hung.image),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Pacifico',
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          hung.name,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Pacifico',
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
