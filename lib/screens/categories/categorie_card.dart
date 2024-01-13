import 'package:flutter/material.dart';
import 'package:ostello_task/theme/app_color.dart';
import 'package:ostello_task/theme/app_font.dart';

class CategorieCard extends StatelessWidget {
  final String title;
  final String path;
  const CategorieCard({super.key, required this.title, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 176,
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColorScheme().reviewColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              title,
              style: FontThemeClass().appBarText(context,
                  color: AppColorScheme().primaryColor,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Center(
            child: SizedBox(
              width: 150,
              child: Image(image: AssetImage(path)),
            ),
          )
        ],
      ),
    );
  }
}
