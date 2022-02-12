import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class Util {
  static String getFormattedDate(DateTime dateTime) {
    // return DateFormat("EEE, MMM d, y").format(dateTime);
    return DateFormat("EEEEEE,MMM d,y").format(dateTime);
  }

  static getItem(IconData iconData, int valeu, String units) {
    return Column(
      children: <Widget>[
        Icon(
          iconData,
          color: Colors.black87,
          size: 28,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$valeu",
          style: TextStyle(fontSize: 20, color: Colors.black87),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$units",
          style: TextStyle(fontSize: 15, color: Colors.black87),
        )
      ],
    );
  }
}
