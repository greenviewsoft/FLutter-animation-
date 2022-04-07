import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            // Load a Lottie file from a remote url
            Lottie.network(
                'https://assets2.lottiefiles.com/packages/lf20_xkxecivz.json'),
            Lottie.network(
                'https://assets3.lottiefiles.com/packages/lf20_licw9nik.json'),
            Container(
              height: 400,
              width: 400,
              child: RiveAnimation.network(
                'https://cdn.rive.app/animations/vehicles.riv',
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}