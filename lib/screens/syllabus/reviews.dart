import 'package:flutter/material.dart';
import 'package:ostello_task/theme/app_color.dart';
import 'package:ostello_task/theme/assets_strings.dart';

import '../../theme/app_font.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      margin: const EdgeInsets.only(top: 14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColorScheme().reviewColor),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 30,
                child: Image(image: AssetImage(AssetName.review)),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Sarah Miller",
                style: FontThemeClass().medium(context,
                    color: AppColorScheme().primaryColor,
                    fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              Container(
                  padding: EdgeInsets.only(top: 3),
                  width: 20,
                  child: Image(image: AssetImage(AssetName.star))),
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 18, left: 6),
                child: Text(
                  "3.9/5",
                  style: FontThemeClass().medium(context,
                      fontWeight: FontWeight.w400,
                      color: AppColorScheme().primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          const Text(
              "The course felt so personalized that I could follow it all along. The instructor knew exactly what he was doing and it was easy for me to grasp the basic concepts as well. Highly recommended!")
        ],
      ),
    );
  }
}
