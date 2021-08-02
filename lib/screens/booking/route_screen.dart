import 'package:flutter/material.dart';
import 'package:ui_ticket_booking/constant.dart';
import 'package:ui_ticket_booking/widgets/booking_screen/pick_info_widget.dart';
import 'package:ui_ticket_booking/widgets/booking_screen/route_type_widget.dart';

class RouteScreen extends StatefulWidget {
  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  bool isOnewayChoiced = true;
  bool isRoundtripChoiced = false;
  bool isMultipleChoiced = false;

  String fromDropdownValue = 'Ha Noi';
  String toDropdownValue = 'Ha Noi';
  String dateDropdownValue = 'Jul 19';
  String groupDropdownValue = '1';
  String classDropdownValue = 'Economy';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: kMainColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RouteType(
                    text: 'One Way',
                    isLast: false,
                    isChoice: isOnewayChoiced,
                    onTap: () {
                      setState(() {
                        isOnewayChoiced = true;
                        isRoundtripChoiced = false;
                        isMultipleChoiced = false;
                      });
                    },
                  ),
                  RouteType(
                    text: 'Roundtrip',
                    isLast: false,
                    isChoice: isRoundtripChoiced,
                    onTap: () {
                      setState(() {
                        isOnewayChoiced = false;
                        isRoundtripChoiced = true;
                        isMultipleChoiced = false;
                      });
                    },
                  ),
                  RouteType(
                    text: 'Multiple',
                    isLast: true,
                    isChoice: isMultipleChoiced,
                    onTap: () {
                      setState(() {
                        isOnewayChoiced = false;
                        isRoundtripChoiced = false;
                        isMultipleChoiced = true;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              PickInfoWidget(
                iconAsset: 'assets/images/takeoff_icon.png',
                labelText: 'FROM',
                dropdownValue: fromDropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    fromDropdownValue = newValue!;
                  });
                },
                // ignore: prefer_const_literals_to_create_immutables
                options: <String>[
                  'Ha Noi',
                  'Ho Chi Minh city',
                  'Da Nang',
                  'Can Tho'
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              PickInfoWidget(
                iconAsset: 'assets/images/landing_icon.png',
                labelText: 'TO',
                dropdownValue: toDropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    toDropdownValue = newValue!;
                  });
                },
                // ignore: prefer_const_literals_to_create_immutables
                options: <String>[
                  'Ha Noi',
                  'Ho Chi Minh city',
                  'Da Nang',
                  'Can Tho'
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              PickInfoWidget(
                iconAsset: 'assets/images/landing_icon.png',
                labelText: 'DATE',
                dropdownValue: dateDropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dateDropdownValue = newValue!;
                  });
                },
                // ignore: prefer_const_literals_to_create_immutables
                options: <String>[
                  'Jul 19',
                  'Jul 20',
                  'Jul 21',
                  'Jul 22',
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              PickInfoWidget(
                iconAsset: 'assets/images/group_icon.png',
                labelText: 'TRAVELER',
                dropdownValue: groupDropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    groupDropdownValue = newValue!;
                  });
                },
                // ignore: prefer_const_literals_to_create_immutables
                options: <String>[
                  '1',
                  '2',
                  '3',
                  '4',
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              PickInfoWidget(
                iconAsset: 'assets/images/seat_icon.png',
                labelText: 'CLASS',
                dropdownValue: classDropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    classDropdownValue = newValue!;
                  });
                },
                // ignore: prefer_const_literals_to_create_immutables
                options: <String>[
                  'Economy',
                  'Business',
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, right: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 30,
                        color: kMainColor,
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
