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
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(image),
        const SizedBox(
          height: 15,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(color: kContainerText, fontSize: 25),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          info,
          textAlign: TextAlign.center,
          style: const TextStyle(color: kGrey, fontSize: 18),
        )
      ],
    );
  }
}

class Articles extends StatelessWidget {
  final String image;
  final String written;
  final String title;
  final String desc;
  const Articles(
      {Key? key,
      required this.image,
      required this.written,
      required this.title,
      required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: kBackground),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                written,
                style: const TextStyle(color: kGrey, fontSize: 12),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: const TextStyle(color: kContainerText, fontSize: 21),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(desc, style: const TextStyle(color: kGrey, fontSize: 16)),
            ],
          ),
        ),
      ]),
    );
  }
}
