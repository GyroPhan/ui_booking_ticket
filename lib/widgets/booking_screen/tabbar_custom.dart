import 'package:flutter/material.dart';
import 'package:ui_ticket_booking/constant.dart';
import 'package:ui_ticket_booking/screens/booking/checkout_screen.dart';
import 'package:ui_ticket_booking/screens/booking/flight_screen.dart';
import 'package:ui_ticket_booking/screens/booking/route_screen.dart';
import 'package:ui_ticket_booking/screens/booking/seat_screen.dart';

class TabbarCustom extends StatelessWidget {
  int currentPage;
  Function() onTapTabbar;
  TabbarCustom({required this.currentPage, required this.onTapTabbar});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: currentPage,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 0,
          shape: Border(
              bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          )),
          backgroundColor: kMainColor,
          bottom: const TabBar(
            indicatorWeight: 3,
            isScrollable: true,
            labelColor: Colors.deepPurpleAccent,
            unselectedLabelColor: Colors.grey,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 5.0,
                  color: kPrimaryColor,
                ),
                insets: EdgeInsets.symmetric(horizontal: 15)),
            tabs: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Route',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Flight',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Seat',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Checkout',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            RouteScreen(),
            FlightScreen(),
            SeatScreen(),
            CheckoutScreen(),
          ],
        ),
      ),
    );
  }
}
