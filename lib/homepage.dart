import 'package:easybank_web/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 35, right: 25, bottom: 15),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/images/logo.svg'),
                Text('easybank')
              ],
            )
          ],
        ),
      ),
    );
  }
}
