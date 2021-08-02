import 'package:flutter/material.dart';
import 'package:ui_ticket_booking/constant.dart';
import 'package:ui_ticket_booking/data.dart';
import 'package:ui_ticket_booking/widgets/booking_screen/day_listview_widget.dart';
import 'package:ui_ticket_booking/widgets/booking_screen/flight_info_widget.dart';
import 'package:ui_ticket_booking/widgets/logo_wiget.dart';

class FlightScreen extends StatelessWidget {
  List<DayDemo> dayDemo = [
    DayDemo(day: 'Mon', date: '10'),
    DayDemo(day: 'Tue', date: '11'),
    DayDemo(day: 'Wed', date: '12'),
    DayDemo(day: 'Thu', date: '13'),
    DayDemo(day: 'Fri', date: '14'),
    DayDemo(day: 'Sat', date: '15'),
    DayDemo(day: 'Sun', date: '16'),
    DayDemo(day: 'Mon', date: '17'),
    DayDemo(day: 'Tue', date: '18'),
    DayDemo(day: 'Wed', date: '19'),
    DayDemo(day: 'Thu', date: '20'),
    DayDemo(day: 'Fri', date: '21'),
    DayDemo(day: 'Sat', date: '22'),
    DayDemo(day: 'Sun', date: '23'),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: kMainColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dayDemo.length,
                    itemBuilder: (context, index) {
                      return DayListViewWidget(
                        dayDemo: dayDemo[index].day,
                        dateDemo: dayDemo[index].date,
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      '2 Flight available HAN to SGN',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 800,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    FlightInfoWidget(
                      arrivalCityICAO: 'HAN',
                      arrivalCity: 'Ha Noi',
                      destinationCityICAO: 'SGN',
                      destinationCity: 'HoChiMinh',
                      dateFlight: 'JUL 19',
                      timeFlight: '1h45m, 08:35AM',
                      nameFlight: 'GP116',
                      price: '1,200,000 VND',
                      onTap: () {},
                    ),
                    FlightInfoWidget(
                      arrivalCityICAO: 'HAN',
                      arrivalCity: 'Ha Noi',
                      destinationCityICAO: 'SGN',
                      destinationCity: 'HoChiMinh',
                      dateFlight: 'JUL 19',
                      timeFlight: '1h45m, 10:35AM',
                      nameFlight: 'GP118',
                      price: '1,200,000 VND',
                      onTap: () {},
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
