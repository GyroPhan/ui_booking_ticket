import 'package:flutter/material.dart';
import 'package:ui_ticket_booking/constant.dart';
import 'package:ui_ticket_booking/screens/home_screen.dart';
import 'package:ui_ticket_booking/widgets/booking_screen/final_checkout_widget.dart';
import 'package:ui_ticket_booking/widgets/booking_screen/route_type_widget.dart';
import 'package:ui_ticket_booking/widgets/logo_wiget.dart';

import '../boarding_pass.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  bool isIPayChoice = true;
  bool isPaypalChoice = false;
  bool isWalletChoice = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kMainColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 35, left: 30, right: 30),
          child: Column(
            children: [
              FlightFinalInfoWidget(
                  firstInfo: 'HAN',
                  firstLableInfo: 'HA NOI',
                  secondInfo: '1h45m',
                  secondLabelInfo: 'FLIGHT TIME',
                  thristInfo: 'SGN',
                  thristLableInfo: 'HOCHIMINH'),
              SizedBox(
                height: 45,
              ),
              FlightFinalInfoWidget(
                  firstInfo: 'AUG 19',
                  firstLableInfo: 'FLIGHT DAY',
                  secondInfo: '08:05AM',
                  secondLabelInfo: 'BOARDING TIME',
                  thristInfo: 'B2',
                  thristLableInfo: 'GATE'),
              SizedBox(
                height: 45,
              ),
              FlightFinalInfoWidget(
                  firstInfo: 'GP116',
                  firstLableInfo: 'FLIGHT NO',
                  secondInfo: '19A',
                  secondLabelInfo: 'SEAT',
                  thristInfo: 'ECO',
                  thristLableInfo: 'CLASS'),
              SizedBox(
                height: 45,
              ),
              Container(
                width: 400,
                height: 2,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '1,400,000 VND',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Payment via',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RouteType(
                    onTap: () {
                      setState(() {
                        isIPayChoice = true;
                        isPaypalChoice = false;
                        isWalletChoice = false;
                      });
                    },
                    isLast: false,
                    text: 'iPay',
                    isChoice: false,
                  ),
                  RouteType(
                    onTap: () {
                      setState(() {
                        isIPayChoice = false;
                        isPaypalChoice = true;
                        isWalletChoice = false;
                      });
                    },
                    isLast: false,
                    text: 'Paypal',
                    isChoice: false,
                  ),
                  RouteType(
                    onTap: () {
                      setState(() {
                        isIPayChoice = false;
                        isPaypalChoice = false;
                        isWalletChoice = true;
                      });
                    },
                    isLast: true,
                    text: 'Wallet',
                    isChoice: false,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BoardingPass()),
                        );
                      },
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Icon(
                          Icons.check,
                          size: 30,
                          color: kMainColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
