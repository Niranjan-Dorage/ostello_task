import 'package:flutter/material.dart';
import 'package:ostello_task/theme/app_color.dart';
import 'package:ostello_task/theme/app_font.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5),
      margin: const EdgeInsets.only(top: 16),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColorScheme().lightPurple,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          const SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Lesson 1",
                style: FontThemeClass().small(context,
                    color: AppColorScheme().primaryColor,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "What is Organic Chemistry?",
                style: FontThemeClass()
                    .medium(context, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const Spacer(),
          InkWell(
            child: Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                  color: AppColorScheme().primaryColor,
                  borderRadius: BorderRadius.circular(100)),
              child: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: AppColorScheme().whiteColor,
                size: 16,
              ),
            ),
          ),
          const SizedBox(
            width: 14,
          )
        ],
      ),
    );
  }
}
