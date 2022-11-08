// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_profile/utils/AppColors.dart';
import 'package:flutter_profile/widgets/svg_loader.dart';

Widget NavigationMenu(icon, {isSelected = false, height, width, onClick}) {
  return InkWell(
    onTap: onClick,
    child: Container(
      padding: const EdgeInsets.all(5),
      child: Column(children: [
        svgLoader(icon, height: height, width: width),
        Container(
          margin: const EdgeInsets.all(8),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
              color:
                  isSelected ? navigationSelectionColor : Colors.transparent),
        )
      ]),
    ),
  );
}
