import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const EasyBank());
}

class EasyBank extends StatelessWidget {
  const EasyBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
