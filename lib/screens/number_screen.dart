import 'package:flutter/material.dart';
import 'package:skeleton/core/base_view.dart';
import 'package:skeleton/view_models/number_view_model.dart';

class NumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<NumberViewModel>(
      builder: (context, NumberViewModel numberViewModel, _) {
        return Material(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  numberViewModel.count.toString(),
                  style: TextStyle(fontSize: 60),
                ),
                ElevatedButton(
                  key: Key('button'),
                  onPressed: () => numberViewModel.addCount(),
                  child: Text(
                    '더하기',
                    style: TextStyle(fontSize: 20),
                  )
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
