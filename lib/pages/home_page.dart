import 'package:flutter/material.dart';
import 'package:flutter_profile/utils/common_string.dart';
import 'package:flutter_profile/utils/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(name, style: headerTextStyle),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(designation, style: subHeaderTextStyle),
          ),
          Text(description, style: bodyTextStyle),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Text(title2, style: headerTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(description, style: bodyTextStyle),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Text(title3, style: headerTextStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(description, style: bodyTextStyle),
          ),
        ],
      ),
    );
  }
}
