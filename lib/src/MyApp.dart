import 'package:flutter/material.dart';
import 'package:guess_the_number/src/backend/counter.dart';
import 'package:provider/provider.dart';
import './screens/HomeScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess The Number',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Data>(
            create: (_) => Data(),
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: Text('Guessing game'),
          ),
          body: HomeScreen(),
        ),
      ),
    );
  }
}
