import 'package:flutter/material.dart';
import 'package:portfolio/profiles/profile.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Profile(),
    );
  }
}