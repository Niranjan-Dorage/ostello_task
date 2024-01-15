import 'package:flutter/material.dart';
import 'package:ostello_task/components/logical_components.dart';
import 'package:ostello_task/screens/syllabus/syllabus_card.dart';
import 'package:ostello_task/theme/app_color.dart';
import 'package:ostello_task/theme/app_font.dart';

class Syllabus extends StatelessWidget {
  const Syllabus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColorScheme().primaryColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: Icon(
                    Icons.navigate_before_rounded,
                    size: 25,
                    color: AppColorScheme().whiteColor,
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  "Syllabus",
                  style: FontThemeClass().appBarText(context),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const SyllabusCard(),
            const SizedBox(
              height: 17,
            ),
            Row(
              children: [
                Text(
                  "Your Curriculum",
                  style: FontThemeClass()
                      .appBarText(context, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Text(
                  "view all",
                  style: FontThemeClass().small(context,
                      color: AppColorScheme().primaryColor,
                      fontWeight: FontWeight.w400),
                ),
                Icon(
                  Icons.navigate_next_rounded,
                  size: 15,
                  color: AppColorScheme().primaryColor,
                )
              ],
            ),
            for (var lessons in LogicalComponents().lessonList) lessons,
            const SizedBox(
              height: 26,
            ),
            Text(
              "Reviews and ratings",
              style: FontThemeClass()
                  .appBarText(context, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 14,
            ),
            for (var reviews in LogicalComponents().reviewsList) reviews,
            const SizedBox(
              height: 26,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColorScheme().primaryColor,
                  elevation: 0,
                  padding: const EdgeInsets.all(0),
                  foregroundColor: AppColorScheme().whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(300), // Rounded corners
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/categories");
                },
                child: const Center(
                    child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: Center(child: Text("Buy Now"))))),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: const EdgeInsets.all(0),
                  foregroundColor: AppColorScheme().primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(300),
                      side: BorderSide(
                          width: 2,
                          color:
                              AppColorScheme().primaryColor) // Rounded corners
                      ),
                ),
                onPressed: () {},
                child: const Center(
                    child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: Center(child: Text("Add To Cart"))))),
            const SizedBox(
              height: 10,
            ),
          ],
        )),
      ),
    );
  }
}
