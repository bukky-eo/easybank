import 'package:easybank_web/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppButtons extends StatelessWidget {
  final String title;
  final Function() onTap;
  const AppButtons({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: const TextStyle(color: kGrey, fontSize: 18),
      ),
    );
  }
}

// ()
class LinearButton extends StatelessWidget {
  final String title;
  const LinearButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, left: 20, right: 20, bottom: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: const LinearGradient(
              colors: [Color(0xff38AD57), Color(0xff2BB7DA)])),
      child: InkWell(
        onTap: () {},
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class OptionsInfo extends StatelessWidget {
  final String image;
  final String title;
  final String info;
  const OptionsInfo(
      {Key? key, required this.image, required this.title, required this.info})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(image),
        const SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: const TextStyle(color: kContainerText, fontSize: 25),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          info,
          style: const TextStyle(color: kGrey, fontSize: 18),
        )
      ],
    );
  }
}

class Articles extends StatelessWidget {
  final Map<String, dynamic> article;
  const Articles({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 320,
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: kBackground),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/$article['image']")),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          article['written'],
          style: const TextStyle(color: kGrey, fontSize: 12),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          article['title'],
          style: const TextStyle(color: kContainerText, fontSize: 21),
        ),
        const SizedBox(
          height: 25,
        ),
        Text(article['desc'],
            style: const TextStyle(color: kGrey, fontSize: 18)),
      ]),
    );
  }
}
