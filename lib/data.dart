import 'package:flutter/material.dart';

class User {
  String name;
  String image;
  User({required this.name, required this.image});
}

User hung = User(
    name: 'Phan Khanh Hung',
    image:
        'https://scontent.fsgn5-4.fna.fbcdn.net/v/t1.6435-9/126511918_2667103640270571_6593543932020356889_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=RJEK7NRCajAAX9dKZky&_nc_ht=scontent.fsgn5-4.fna&oh=33aeddc725ce39e41fff9d092ede3fad&oe=6125D1E3');

class DayDemo {
  String day;
  String date;
  DayDemo({required this.day, required this.date});
}
