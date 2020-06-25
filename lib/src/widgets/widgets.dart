import 'package:flutter/material.dart';
import 'package:guess_the_number/src/backend/counter.dart';
import 'package:provider/provider.dart';
import '../backend/counter.dart';

String inputNumber;
var controller = TextEditingController();

class Instructions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Guess a number between 0 and 9 ');
  }
}

class InputNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      controller: controller,
      onChanged: (value) {
        inputNumber = value;
      },
      textAlign: TextAlign.center,
      maxLength: 1,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(),
    );
  }
}

class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Data _data = Provider.of<Data>(context);
    return RaisedButton(
      child: Text('Submit'),
      onPressed: () {
        controller.clear();
        _data.countUp();
        print(inputNumber);
        print(_data.changeNumber);
        print('${_data.counter}');
      },
    );
  }
}

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Data _data = Provider.of<Data>(context);
    double luckPercent = (1 / _data.counter) * 100;
    return (inputNumber == _data.changeNumber.toString())
        ? Text('Winner, your luck was at ${luckPercent.roundToDouble()}%')
        : Text('Looser');
  }
}

class ResetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Data _data = Provider.of<Data>(context);
    return RaisedButton(
      onPressed: () {
        _data.resetNumber();
      },
      child: Text('reset'),
    );
  }
}
