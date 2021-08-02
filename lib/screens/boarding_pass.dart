import 'package:flutter/material.dart';
import 'package:ui_ticket_booking/constant.dart';
import 'package:ui_ticket_booking/screens/home_screen.dart';
import 'package:ui_ticket_booking/screens/user_info_screen.dart';
import 'package:ui_ticket_booking/widgets/appbar_custom.dart';
import 'package:ui_ticket_booking/widgets/booking_screen/final_checkout_widget.dart';
import 'package:ui_ticket_booking/widgets/logo_wiget.dart';

class BoardingPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 10, right: 10),
        // ignore: avoid_unnecessary_containers
        child: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: AppbarCustom(
                    icon: Icons.clear_outlined,
                    iconColor: Colors.white,
                    iconOnTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    imageOnTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserInfoScreen()),
                      );
                    }),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  height: 650,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      LogoWidget(logo_size: 40, text_size: 15),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'FROM',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        'HAN',
                                        style: TextStyle(
                                            color: kMainColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'TO',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        'SGN',
                                        style: TextStyle(
                                            color: kMainColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'FLIGHT NO',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        'GP116',
                                        style: TextStyle(
                                            color: kMainColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 200,
                                    height: 200,
                                    child: Image.asset(
                                      'assets/images/sgn_map.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 2,
                                width: 300,
                                color: Colors.grey.shade300,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              FlightFinalInfoWidget(
                                firstInfo: 'AUG 19',
                                firstLableInfo: 'FLIGHT DAY',
                                secondInfo: '08:05AM',
                                secondLabelInfo: 'BOARDING TIME',
                                thristInfo: 'B2',
                                thristLableInfo: 'GATE',
                                infoColor: kMainColor,
                                lableColor: Colors.grey,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              FlightFinalInfoWidget(
                                firstInfo: 'ECONOMY',
                                firstLableInfo: 'CLASS',
                                secondInfo: '19 A',
                                secondLabelInfo: 'SEAT',
                                thristInfo: ' ',
                                thristLableInfo: 'MARK',
                                infoColor: kMainColor,
                                lableColor: Colors.grey,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: kMainColor,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      bottomRight: Radius.circular(30))),
                            ),
                            Expanded(
                              child: Center(
                                child: Text(
                                  ' - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                                  style: TextStyle(color: kMainColor),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: kMainColor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30))),
                            ),
                          ],
                        ),
                        Text(
                          'Boarding Pass',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: kMainColor),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            'assets/images/qr_code.png',
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          )),
        ),
      ),
    );
  }
}
