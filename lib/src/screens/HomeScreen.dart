import 'package:flutter/material.dart';
import 'package:guess_the_number/src/backend/counter.dart';
import '../widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Data _data = Provider.of<Data>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Instructions(),
        InputNumber(),
        SubmitButton(),
        Text('you have tried ${_data.counter} times'),
        Result(),
        ResetButton()
      ],
    );
  }
}
