import 'package:easybank_web/helpers/constants.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  const ResponsiveLayout(
      {Key? key, required this.mobileBody, required this.desktopBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < desktopWidth) {
        return mobileBody;
      } else {
        return desktopBody;
      }
    });
  }
}

class SecondTab extends StatelessWidget {
  final Widget secondTabMobile;
  final Widget secondTabDesktop;
  const SecondTab(
      {Key? key, required this.secondTabMobile, required this.secondTabDesktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < desktopWidth) {
        return secondTabMobile;
      } else {
        return secondTabDesktop;
      }
    });
  }
}

class ThirdTab extends StatelessWidget {
  final Widget thirdTabDesktop;
  final Widget thirdTabMobile;
  const ThirdTab(
      {Key? key, required this.thirdTabDesktop, required this.thirdTabMobile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < desktopWidth) {
        return thirdTabMobile;
      } else {
        return thirdTabDesktop;
      }
    });
  }
}

class ArticleTab extends StatelessWidget {
  final Widget articleTabDesktop;
  final Widget articleTabMobile;

  const ArticleTab(
      {Key? key,
      required this.articleTabDesktop,
      required this.articleTabMobile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < desktopWidth) {
        return articleTabMobile;
      } else {
        return articleTabDesktop;
      }
    });
  }
}

class FourthTab extends StatelessWidget {
  final Widget fourthTabDesktop;
  final Widget fourthTabMobile;
  const FourthTab(
      {Key? key, required this.fourthTabDesktop, required this.fourthTabMobile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < desktopWidth) {
        return fourthTabMobile;
      } else {
        return fourthTabDesktop;
      }
    });
  }
}
