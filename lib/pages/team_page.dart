import 'package:flutter/material.dart';
import 'package:flutter_profile/utils/AppColors.dart';
import 'package:flutter_profile/utils/common_string.dart';
import 'package:flutter_profile/utils/text_style.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Team',
            style: headerTextStyle,
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: bodyTextStyle,
          ),
          const SizedBox(height: 10),
          _itemWidget('John Cena1', 'assets/images/avtar1.png'),
          _itemWidget('John Cena2', 'assets/images/avtar2.png'),
          _itemWidget('John Cena3', 'assets/images/avtar3.png'),
          _itemWidget('John Cena4', 'assets/images/avtar4.png'),
          _itemWidget('John Cena5', 'assets/images/avtar5.png'),
        ],
      ),
    );
  }
}

Widget _itemWidget(name, image) {
  return Container(
    margin: const EdgeInsets.only(top: 5),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: cardBGColor),
    child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        width: 40,
        height: 40,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
        child: Image.asset(image),
      ),
      const SizedBox(height: 5),
      Expanded(
        child: Container(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: subHeaderTextStyle),
              const SizedBox(height: 5),
              Text(description, style: bodyTextStyle),
            ],
          ),
        ),
      ),
    ]),
  );
}
