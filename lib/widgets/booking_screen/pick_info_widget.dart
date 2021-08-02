import 'package:flutter/material.dart';

import '../../constant.dart';

class PickInfoWidget extends StatelessWidget {
  String iconAsset;
  String labelText;
  String dropdownValue;
  Function(String?) onChanged;
  List<String> options;
  PickInfoWidget(
      {required this.iconAsset,
      required this.labelText,
      required this.dropdownValue,
      required this.onChanged,
      required this.options});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 68,
          height: 68,
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey, width: 1),
                right: BorderSide(color: Colors.grey, width: 1)),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            width: 20,
            height: 20,
            child: Image.asset(
              iconAsset,
            ),
          ),
        ),
        Container(
          width: 250,
          height: 68,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey, width: 1),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  labelText,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  isExpanded: true,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: kPrimaryColor,
                  ),
                  iconSize: 30,
                  underline: Container(
                    height: 0,
                    color: kMainColor,
                  ),
                  onChanged: onChanged,
                  items: options.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
