import 'package:flutter/material.dart';

import '../../constant.dart';

class SeatLineWidget extends StatelessWidget {
  const SeatLineWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: 145,
        child: Row(
          children: [
            SeatWidget(),
            SeatWidget(),
            SizedBox(
              width: 12,
            ),
            SeatWidget(),
            SeatWidget(),
          ],
        ));
  }
}

class SeatWidget extends StatelessWidget {
  const SeatWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: SingleChildScrollView(
        child: Container(
          width: 29,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
            border: Border.all(color: kPrimaryColor, width: 2),
          ),
        ),
      ),
    );
  }
}
