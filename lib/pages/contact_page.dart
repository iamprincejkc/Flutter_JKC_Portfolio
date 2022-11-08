import 'package:flutter/material.dart';
import 'package:flutter_profile/utils/text_style.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact me',
            style: headerTextStyle,
          ),
          const SizedBox(height: 10),
          _itemWidget('Email', 'test@test.com'),
          _itemWidget('Mobile', '0999232423'),
        ],
      ),
    );
  }
}

Widget _itemWidget(title, value) {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: subHeaderTextStyle,
        ),
        Text(
          value,
          style: bodyTextStyle,
        ),
      ],
    ),
  );
}
