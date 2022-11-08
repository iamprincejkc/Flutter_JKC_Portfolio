import 'package:flutter/material.dart';
import 'package:flutter_profile/main.dart';
import 'package:flutter_profile/utils/AppColors.dart';
import 'package:flutter_profile/utils/common_string.dart';
import 'package:flutter_profile/utils/text_style.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Portfolio',
            style: headerTextStyle,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              description,
              style: bodyTextStyle,
            ),
          ),
          Row(
            children: [
              _itemWidget('1', width),
              _itemWidget('2', width),
              _itemWidget('3', width),
            ],
          ),
          Row(
            children: [
              _itemWidget('1', width),
              _itemWidget('2', width),
              _itemWidget('3', width),
            ],
          )
        ],
      ),
    );
  }

  Widget _itemWidget(title, width) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: (() {
          scaffoldkey.currentState?.showBottomSheet((context) {
            return Container(
              color: backgroundLight,
              width: width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    alignment: Alignment.center,
                    color: cardBGColor,
                    child: Text(title),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      'Project Name',
                      style: subHeaderTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    child: Text(
                      description,
                      style: bodyTextStyle,
                    ),
                  )
                ],
              ),
            );
          });
        }),
        child: Container(
          margin: const EdgeInsets.all(3),
          height: 100,
          color: cardBGColor,
          alignment: Alignment.center,
          child: Text(title),
        ),
      ),
    );
  }
}
