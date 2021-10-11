import 'package:flutter/material.dart';

class ModelClass extends ChangeNotifier {
  ModelClass({
    this.color = Colors.blue,
    this.color1 = Colors.red,
    this.color2 = Colors.green,
  });
  Color color;
  Color color1;
  Color color2;

  Color get color11 => color;
  Color get color22 => color1;
  Color get color33 => color2;
  //
  // void setColor(Color color) {
  //   colorChanger(color: color);
  // }
  //
  // Color _getColor(int? index) {
  //   if(index == 0) {
  //     Color.
  //   }
  // }

  colorChanger({
    Color? color,
    Color? color1,
    Color? color2,
  }) {
    this.color = color ?? this.color;
    this.color1 = color1 ?? this.color1;
    this.color2 = color2 ?? this.color2;

    // if (color == Colors.blue) {
    //   color = Colors.red;
    // } else if (color == Colors.red) {
    //   color = Colors.green;
    // } else {
    //   color = Colors.blue;
    // }
    notifyListeners();
  }
}
