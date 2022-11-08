import 'package:flutter/material.dart';
import 'package:flutter_profile/utils/AppColors.dart';
import 'package:flutter_profile/utils/common_string.dart';
import 'package:flutter_profile/utils/text_style.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Professional Experience',
            style: headerTextStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          _itemWidget('01 January 2021', description),
          _itemWidget('01 January 2021', description),
          _itemWidget('01 January 2021', description),
          _itemWidget('01 January 2021', description),
          _itemWidget('01 January 2021', description),
          _itemWidget('01 January 2021', description),
        ],
      ),
    );
  }

  Widget _itemWidget(title, description) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  height: 15,
                  width: 15,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey)),
              Text(
                title,
                style: subHeaderTextStyle,
              ),
            ],
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.only(left: 6, top: 10),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(width: 2, color: Colors.grey),
              ),
            ),
            child: Container(
              height: 100,
              margin: const EdgeInsets.only(left: 15),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: cardBGColor),
              child: Text(description),
            ),
          ),
        ],
      ),
    );
  }
}
