import 'package:flutter/material.dart';
import 'package:ui_ticket_booking/constant.dart';
import 'package:ui_ticket_booking/screens/user_info_screen.dart';
import 'package:ui_ticket_booking/widgets/appbar_custom.dart';
import 'package:ui_ticket_booking/widgets/booking_screen/tabbar_custom.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(
                height: height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: AppbarCustom(
                          icon: Icons.clear_outlined,
                          iconColor: kMainColor,
                          iconOnTap: () {
                            Navigator.pop(context);
                          },
                          imageOnTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserInfoScreen()),
                            );
                          }),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30, top: 40),
                      child: Text(
                        'Add flight',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: kMainColor),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: height - 200,
                foregroundDecoration: const BoxDecoration(
                  color: kMainColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(23),
                      topLeft: Radius.circular(23)),
                ),
              ),
              Container(
                height: height - 227,
                child: TabbarCustom(
                  currentPage: currentPage,
                  onTapTabbar: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
