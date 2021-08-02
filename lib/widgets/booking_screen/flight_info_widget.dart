import 'package:flutter/material.dart';

import '../../constant.dart';
import '../logo_wiget.dart';

class FlightInfoWidget extends StatelessWidget {
  String arrivalCityICAO;
  String arrivalCity;
  String destinationCityICAO;
  String destinationCity;
  String dateFlight;
  String timeFlight;
  String nameFlight;
  String price;
  Function() onTap;
  FlightInfoWidget(
      {required this.arrivalCityICAO,
      required this.arrivalCity,
      required this.destinationCityICAO,
      required this.destinationCity,
      required this.dateFlight,
      required this.timeFlight,
      required this.nameFlight,
      required this.price,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Container(
          height: 250,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          arrivalCityICAO,
                          style:
                              const TextStyle(color: kMainColor, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          arrivalCity,
                          style:
                              const TextStyle(color: kMainColor, fontSize: 15),
                        ),
                      ],
                    ),
                    LogoWidget(logo_size: 30, text_size: 8),
                    Column(
                      children: [
                        Text(
                          destinationCityICAO,
                          style: TextStyle(color: kMainColor, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          destinationCity,
                          style:
                              const TextStyle(color: kMainColor, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'DATE',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          dateFlight,
                          style: TextStyle(color: kMainColor, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/takeoff_icon.png',
                          width: 30,
                          height: 30,
                          color: kMainColor,
                        ),
                        Text(
                          timeFlight,
                          style: const TextStyle(
                            color: kMainColor,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'FLIGHT NO',
                          style: TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          nameFlight,
                          style: TextStyle(color: kMainColor, fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 1,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/payment_icon.png',
                      width: 60,
                      height: 50,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Ticket Price',
                          style: TextStyle(
                              color: kMainColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                              color: kMainColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
