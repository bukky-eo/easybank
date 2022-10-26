import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easybank_web/helpers/constants.dart';
import 'package:easybank_web/helpers/widgets.dart';
import '../pages/about/about.dart';
import '../pages/blog/blog.dart';
import '../pages/careers/career.dart';
import '../pages/contact/contact.dart';
import '../pages/home/home.dart';

class AppBarMobile extends StatelessWidget {
  const AppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset('assets/logo.svg'),
          SvgPicture.asset(
            'assets/icon-hamburger.svg',
            color: kContainerText,
          )
          // Drawer(
          //   child: ListView(
          //     children: [
          //       AppButtons(
          //           title: 'Home',
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => const Home()));
          //           }),
          //       const SizedBox(width: 15),
          //       AppButtons(
          //           title: 'About',
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => const About()));
          //           }),
          //       const SizedBox(width: 15),
          //       AppButtons(
          //           title: 'Contact',
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => const Contact()));
          //           }),
          //       const SizedBox(width: 15),
          //       AppButtons(
          //           title: 'Blog',
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => const Blog()));
          //           }),
          //       const SizedBox(width: 15),
          //       AppButtons(
          //           title: 'Careers',
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => const Career()));
          //           }),
          //       const LinearButton(title: 'Request Invite'),
          //     ],
          //   ),
          // )
        ],
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

class SecondTabDesktop extends StatelessWidget {
  const SecondTabDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                'Next generation digital banking',
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
    );
  }
}

class SecondTabMobile extends StatelessWidget {
  const SecondTabMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      decoration: const BoxDecoration(color: kSecondTabColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SvgPicture.asset(
                'assets/bg-intro-mobile.svg',
                // width: double.infinity,
              ),
              Image.asset(
                'assets/image-mockups.png',
                width: screenWidth,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                'Next generation digital banking',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kContainerText,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 15),
              Text(
                'Take your financial life online. Your Easybank account, will be a one-stop-shop for spending, saving, budgeting, investing, and much more',
                textAlign: TextAlign.center,
                style: TextStyle(color: kGrey, fontSize: 18),
              ),
              SizedBox(height: 25),
              LinearButton(title: 'Request Invite'),
              SizedBox(height: 25),
            ],
          ),
        ],
      ),
    );
  }
}

class ThirdTabDesktop extends StatelessWidget {
  const ThirdTabDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class ThirdTabMobile extends StatelessWidget {
  const ThirdTabMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 25, right: 25),
      decoration: const BoxDecoration(color: kThirdTabColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Why choose EasyBank?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kContainerText,
              fontSize: 32,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
              'We leverage open Banking to turn your bank account into your final hub. \nControl your finances like never before',
              textAlign: TextAlign.center,
              style: TextStyle(color: kGrey, fontSize: 18)),
          const SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              OptionsInfo(
                  image: 'assets/icon-online.svg',
                  title: 'Online Banking',
                  info:
                      'Our modern web and mobile applications allow you to keep track of your finances wherever you are in the world'),
              SizedBox(height: 15),
              OptionsInfo(
                  image: 'assets/icon-budgeting.svg',
                  title: 'Simple Budgeting',
                  info:
                      "See exactly where your money goes each month. Receive notifications when you're close to hinting your limits"),
              SizedBox(height: 15),
              OptionsInfo(
                  image: 'assets/icon-onboarding.svg',
                  title: 'Fast Onboarding',
                  info:
                      "We don't do branches. Open your account in minutes online and start taking control of your finances right away "),
              SizedBox(height: 15),
              OptionsInfo(
                  image: 'assets/icon-api.svg',
                  title: 'Open API',
                  info:
                      'Manage your savings, investments, pension, and much more from one. account. Tracking your money has money never been easier'),
            ],
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}

class ArticleTabDesktop extends StatelessWidget {
  const ArticleTabDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 100, right: 100),
      height: 600,
      // width: 320,
      // width: double.infinity,
      color: kSecondTabColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              children: const [
                Articles(
                  image: 'assets/image-currency.jpg',
                  written: 'By Claire Robinson',
                  title: 'Receive money in any \ncurrency with no fees',
                  desc:
                      'The world is getting smaller and \nwe are becoming more mobile.So \nwhy should you be forced to only \nreceive money in a single ...',
                ),
                Articles(
                  image: 'assets/image-restaurant.jpg',
                  written: 'By Wilson Hutton',
                  title: 'Treat yourself without \nworrying about money ',
                  desc:
                      'Our simple budgeting feature \nallows you to separate out your \nspending and set realistic \nlimits each month. That means you ...',
                ),
                Articles(
                  image: 'assets/image-plane.jpg',
                  written: 'By Wilson Hutton',
                  title: 'Take your Easybank card \nwherever you go',
                  desc:
                      "We want you to enjoy your travels. \nThis is why we don't charge any \nfees on purchases while you're \nabroad. We'll even show you ...",
                ),
                Articles(
                  image: 'assets/image-confetti.jpg',
                  written: 'By Claire Robinson',
                  title: 'Our invite-only Beta \naccount are live',
                  desc:
                      "After a lot of hardwork by the whole team, we are excited to launch our closed beta. It's easy to request an invite through the site ... ",
                )
              ]),
        ],
      ),
    );
  }
}

class ArticleTabMobile extends StatelessWidget {
  const ArticleTabMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25),
      width: double.infinity,
      color: kSecondTabColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Latest Articles',
              style: TextStyle(
                color: kContainerText,
                fontSize: 40,
              ),
            ),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Articles(
                  image: 'assets/image-currency.jpg',
                  written: 'By Claire Robinson',
                  title: 'Receive money in any \ncurrency with no fees',
                  desc:
                      'The world is getting smaller and \nwe are becoming more mobile.So \nwhy should you be forced to only \nreceive money in a single ...',
                ),
                SizedBox(
                  height: 15,
                ),
                Articles(
                  image: 'assets/image-restaurant.jpg',
                  written: 'By Wilson Hutton',
                  title: 'Treat yourself without \nworrying about money ',
                  desc:
                      'Our simple budgeting feature \nallows you to separate out your \nspending and set realistic \nlimits each month. That means you ...',
                ),
                SizedBox(
                  height: 15,
                ),
                Articles(
                  image: 'assets/image-plane.jpg',
                  written: 'By Wilson Hutton',
                  title: 'Take your Easybank card \nwherever you go',
                  desc:
                      "We want you to enjoy your travels. \nThis is why we don't charge any \nfees on purchases while you're \nabroad. We'll even show you ...",
                ),
                SizedBox(
                  height: 15,
                ),
                Articles(
                  image: 'assets/image-confetti.jpg',
                  written: 'By Claire Robinson',
                  title: 'Our invite-only Beta \naccount are live',
                  desc:
                      "After a lot of hardwork by the whole team, we are excited to launch our closed beta. It's easy to request an invite through the site ... ",
                )
              ]),
        ],
      ),
    );
  }
}

class FourthTabDesktop extends StatelessWidget {
  const FourthTabDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const About()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Blog()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const About()));
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
    );
  }
}

class FourthTabMobile extends StatelessWidget {
  const FourthTabMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 25, right: 25),
        decoration: const BoxDecoration(
          color: kContainerText,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 15),
            SvgPicture.asset(
              'assets/logo.svg',
              color: Colors.white,
            ),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
            ),
            const SizedBox(height: 15),
            AppButtons(
                title: 'About us',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const About()));
                }),
            const SizedBox(height: 5),
            AppButtons(
                title: 'Contact',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Contact()));
                }),
            const SizedBox(height: 5),
            AppButtons(
                title: 'Blog',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Blog()));
                }),
            const SizedBox(height: 5),
            AppButtons(
                title: 'Career',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Career()));
                }),
            const SizedBox(height: 5),
            AppButtons(
                title: 'Support',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const About()));
                }),
            const SizedBox(height: 5),
            AppButtons(
                title: 'Privacy Policy',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Contact()));
                }),
            const SizedBox(height: 15),
            const LinearButton(title: 'Request Invite'),
            const SizedBox(height: 10),
            const Text('@ EasyBank. All Rights Reserved',
                style: TextStyle(color: kGrey, fontSize: 18)),
            const SizedBox(height: 15),
          ],
        ));
  }
}
