import 'package:easybank_web/helpers/articles.dart';
import 'package:easybank_web/helpers/constants.dart';
import 'package:easybank_web/helpers/widgets.dart';
import 'package:easybank_web/screens/pages/about/about.dart';
import 'package:easybank_web/screens/pages/blog/blog.dart';
import 'package:easybank_web/screens/pages/careers/career.dart';
import 'package:easybank_web/screens/pages/contact/contact.dart';
import 'package:easybank_web/screens/pages/home/home.dart';
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
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kBackground,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const AppBars(),
            Container(
              height: 500,
              padding: const EdgeInsets.only(left: 100),
              decoration: const BoxDecoration(color: kSecondTabColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Next generation \ndigital banking',
                        style: TextStyle(
                          color: kContainerText,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Take your financial life online. Your Easybank account, \nwill be a one-stop-shop for spending, saving, \nbudgeting, investing, and much more',
                        style: TextStyle(color: kGrey, fontSize: 18),
                      ),
                      SizedBox(height: 25),
                      LinearButton(title: 'Request Invite')
                    ],
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      SvgPicture.asset(
                        'assets/bg-intro-desktop.svg',
                        height: 500,
                        // width: double.infinity,
                      ),
                      Image.asset(
                        'assets/image-mockups.png',
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 500,
              padding: const EdgeInsets.only(left: 100, right: 100),
              decoration: const BoxDecoration(color: kThirdTabColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Why choose EasyBank?',
                    style: TextStyle(
                      color: kContainerText,
                      fontSize: 35,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                      'We leverage open Banking to turn your bank account into your final hub. \nControl your finances like never before',
                      style: TextStyle(color: kGrey, fontSize: 18)),
                  const SizedBox(height: 30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      OptionsInfo(
                          image: 'assets/icon-online.svg',
                          title: 'Online Banking',
                          info:
                              'Our modern web and mobile \napplications allow you to keep \ntrack of your finances wherever \nyou are in the world'),
                      OptionsInfo(
                          image: 'assets/icon-budgeting.svg',
                          title: 'Simple Budgeting',
                          info:
                              "See exactly where your \nmoney goes each month. Receive \nnotifications when you're close to \nhinting your limits"),
                      OptionsInfo(
                          image: 'assets/icon-onboarding.svg',
                          title: 'Fast Onboarding',
                          info:
                              "We don't do branches. Open your \naccount in minutes online and start \ntaking control of your finances \nright away "),
                      OptionsInfo(
                          image: 'assets/icon-api.svg',
                          title: 'Open API',
                          info:
                              'Manage your savings, investments, \npension, and much more from one. \naccount. Tracking your money has money \nnever been easier'),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 100, right: 100),
              height: 600,
              color: kSecondTabColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Latest Articles',
                    style: TextStyle(
                      color: kContainerText,
                      fontSize: 40,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: articleList
                        .map(
                            (singleArticle) => Articles(article: singleArticle))
                        .toList(),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 100, right: 100),
              height: 200,
              decoration: const BoxDecoration(
                color: kContainerText,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/logo.svg',
                        color: Colors.white,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icon-instagram.svg'),
                          const SizedBox(width: 15),
                          SvgPicture.asset('assets/icon-facebook.svg'),
                          const SizedBox(width: 15),
                          SvgPicture.asset('assets/icon-pinterest.svg'),
                          const SizedBox(width: 15),
                          SvgPicture.asset('assets/icon-twitter.svg'),
                          const SizedBox(width: 15),
                          SvgPicture.asset('assets/icon-youtube.svg'),
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppButtons(
                          title: 'About us',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const About()));
                          }),
                      const SizedBox(height: 15),
                      AppButtons(
                          title: 'Contact',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Contact()));
                          }),
                      const SizedBox(height: 15),
                      AppButtons(
                          title: 'Blog',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Blog()));
                          }),
                      const SizedBox(height: 15),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppButtons(
                          title: 'Career',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Career()));
                          }),
                      const SizedBox(height: 15),
                      AppButtons(
                          title: 'Support',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const About()));
                          }),
                      const SizedBox(height: 15),
                      AppButtons(
                          title: 'Privacy Policy',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Contact()));
                          }),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      LinearButton(title: 'Request Invite'),
                      const SizedBox(height: 15),
                      Text('@ EasyBank. All Rights Reserved',
                          style: TextStyle(color: kGrey, fontSize: 18))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppBars extends StatelessWidget {
  const AppBars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 25, left: 100, right: 100, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/logo.svg'),
          Row(
            children: [
              AppButtons(
                  title: 'Home',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  }),
              const SizedBox(width: 15),
              AppButtons(
                  title: 'About',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const About()));
                  }),
              const SizedBox(width: 15),
              AppButtons(
                  title: 'Contact',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Contact()));
                  }),
              const SizedBox(width: 15),
              AppButtons(
                  title: 'Blog',
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Blog()));
                  }),
              const SizedBox(width: 15),
              AppButtons(
                  title: 'Careers',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Career()));
                  })
            ],
          ),
          const LinearButton(title: 'Request Invite'),
          // Text('easybank')
        ],
      ),
    );
  }
}

// ()
class AppBarMobile extends StatelessWidget {
  const AppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/logo.svg'),
          SvgPicture.asset('assets/icon-hamburger')
        ],
      ),
    );
  }
}
