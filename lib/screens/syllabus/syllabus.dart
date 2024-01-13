import 'package:flutter/material.dart';
import 'package:ostello_task/screens/syllabus/syllabus_card.dart';
import 'package:ostello_task/theme/app_color.dart';
import 'package:ostello_task/theme/app_font.dart';

class Syllabus extends StatelessWidget {
  const Syllabus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              margin: const EdgeInsets.only(left: 16),
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
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SyllabusCard()
            ],
          )),
        ),
      ),
    );
  }
}
