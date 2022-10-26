import 'package:easybank_web/helpers/articles.dart';
import 'package:easybank_web/helpers/constants.dart';
import 'package:easybank_web/helpers/widgets.dart';
import 'package:easybank_web/screens/pages/about/about.dart';
import 'package:easybank_web/screens/pages/blog/blog.dart';
import 'package:easybank_web/screens/pages/careers/career.dart';
import 'package:easybank_web/screens/pages/contact/contact.dart';
import 'package:easybank_web/screens/responsive/widgets.dart';
import 'package:easybank_web/screens/responsive/layout.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [
              ResponsiveLayout(
                  mobileBody: AppBarMobile(), desktopBody: AppBars()),
              // AppBars(),
              SecondTab(
                secondTabDesktop: SecondTabDesktop(),
                secondTabMobile: SecondTabMobile(),
              ),
              ThirdTab(
                  thirdTabDesktop: ThirdTabDesktop(),
                  thirdTabMobile: ThirdTabMobile()),
              // ArticleTab(
              //   articleTabDesktop: ArticleTabDesktop(),
              //   articleTabMobile: ArticleTabMobile(),
              // ),
              FourthTab(
                  fourthTabDesktop: FourthTabDesktop(),
                  fourthTabMobile: FourthTabMobile())
            ],
          ),
        ),
      ),
    );
  }
}

// ()
