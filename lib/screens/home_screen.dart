import 'package:flutter/material.dart';
import 'package:ui_ticket_booking/constant.dart';
import 'package:ui_ticket_booking/screens/boarding_pass.dart';
import 'package:ui_ticket_booking/screens/booking/booking_screen.dart';
import 'package:ui_ticket_booking/screens/user_info_screen.dart';
import 'package:ui_ticket_booking/widgets/appbar_custom.dart';
import 'package:ui_ticket_booking/widgets/home_screen/special_panel_wiget.dart';
import '../data.dart';
import '../widgets/logo_wiget.dart';
import '../widgets/home_screen/ad_panel_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double width = 370;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                AppbarCustom(
                  icon: Icons.clear_all,
                  iconColor: kPrimaryColor,
                  iconOnTap: () {},
                  imageOnTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserInfoScreen()),
                    );
                  },
                ),
                LogoWidget(logo_size: 70, text_size: 16),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 270,
                  width: width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      AdPanel(
                          image: 'assets/images/sgn_image.png',
                          route: 'Phu Quoc - Ho Chi Minh city',
                          dateFlight: '01 Apr 2021',
                          priceFlight: 'VND 1,259,000/ One way'),
                      AdPanel(
                          image: 'assets/images/han_image.png',
                          route: 'Can Tho - Ha Noi',
                          dateFlight: '07 Apr 2021',
                          priceFlight: 'VND 1,099,000/ One way'),
                      AdPanel(
                          image: 'assets/images/dad_image.png',
                          route: 'Hai Phong - Da Nang',
                          dateFlight: '04 Apr 2021',
                          priceFlight: 'VND 759,000/ One way'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BookingScreen()),
                    );
                  },
                  child: Container(
                    width: width,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: kPrimaryColor, width: 2),
                    ),
                    child: const Center(
                        child: Text(
                      'Booking Flights',
                      style: TextStyle(
                          fontSize: 17,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BoardingPass()),
                    );
                  },
                  child: Container(
                    width: width,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: kPrimaryColor, width: 2),
                    ),
                    child: const Center(
                        child: Text(
                      'Your Flight',
                      style: TextStyle(
                          fontSize: 17,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Special fares from Ha Noi',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'View all',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 170,
                  width: width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SpecialPanel(
                          image: 'assets/images/bhutan.png',
                          route: 'Ha Noi - Bhutan',
                          dateFlight: '08 Jun 2021',
                          priceFlight: 'VND 7,259,000/ One way'),
                      const SizedBox(
                        width: 30,
                      ),
                      SpecialPanel(
                          image: 'assets/images/tokyo.png',
                          route: 'Ha Noi - Tokyo',
                          dateFlight: '07 Apr 2021',
                          priceFlight: 'VND 16,259,000/ One way'),
                      SizedBox(
                        width: 30,
                      ),
                      SpecialPanel(
                          image: 'assets/images/london.png',
                          route: 'Ha Noi - London',
                          dateFlight: '11 Apr 2021',
                          priceFlight: 'VND 20,259,000/ One way'),
                    ],
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
