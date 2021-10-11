import 'package:flutter/material.dart';
import 'package:practice/second_screen.dart';
import 'package:provider/provider.dart';

import 'model_class.dart';

class Home extends StatelessWidget with ChangeNotifier {
  Home({Key? key}) : super(key: key);

  late final ValueNotifier<bool> _centerTitle = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ModelClass>(context, listen: false);
    return ValueListenableBuilder(
      valueListenable: _centerTitle,
      builder: (BuildContext context, bool value, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: model.color11,
            title: const Text('Value Notifier'),
            centerTitle: value,
            actions: [
              IconButton(
                onPressed: () => _centerTitleChecker(value),
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ColorScreen.create(context),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.arrow_forward,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  bool _centerTitleChecker(bool title) {
    if (title == true) {
      return _centerTitle.value = false;
    } else {
      return _centerTitle.value = true;
    }
  }
}
