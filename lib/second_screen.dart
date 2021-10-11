import 'package:flutter/material.dart';
import 'package:practice/model_class.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({Key? key, required this.model}) : super(key: key);
  final ModelClass model;

  static create(BuildContext context) {
    return ChangeNotifierProvider<ModelClass>(
      create: (context) => ModelClass(),
      child: Consumer<ModelClass>(
        builder: (_, model, __) => ColorScreen(
          model: model,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: model.color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: 50,
              width: 50,
              color: model.color11,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: model.color11,
              ),
              onPressed: () {
                model.colorChanger(color: Colors.black);
              },
              child: const Text('ChangeNotifier1'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: model.color11,
              ),
              onPressed: () {
                model.colorChanger(color: Colors.deepOrange);
              },
              child: const Text('ChangeNotifier2'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: model.color2,
              ),
              onPressed: () {
                model.colorChanger(color: Colors.white);
              },
              child: const Text('ChangeNotifier3'),
            ),
          ],
        ),
      ),
    );
  }
}
