import 'package:flutter/material.dart';

class AdPanel extends StatelessWidget {
  String image;
  String route;
  String priceFlight;
  String dateFlight;
  AdPanel(
      {required this.image,
      required this.route,
      required this.dateFlight,
      required this.priceFlight});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          width: 370,
          height: 270,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset(image),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 30, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                route,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'From ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' ${priceFlight}',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Book by ${dateFlight}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
