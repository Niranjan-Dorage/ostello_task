import 'package:flutter/material.dart';
import 'package:ostello_task/components/logical_components.dart';

import '../../theme/app_color.dart';
import '../../theme/app_font.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        backgroundColor: AppColorScheme().primaryColor,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    margin: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                        color: AppColorScheme().whiteColor,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.navigate_before_rounded,
                      size: 25,
                      color: AppColorScheme().primaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                Text(
                  "Categories",
                  style: FontThemeClass()
                      .appBarText(context, color: AppColorScheme().whiteColor),
                )
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                cursorColor: AppColorScheme().primaryColor,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      borderSide: BorderSide.none),
                  fillColor: AppColorScheme().whiteColor,
                  filled: true,
                  focusColor: AppColorScheme().whiteColor,
                  hintText: 'Student Email ID',
                  hintStyle: FontThemeClass().medium(context,
                      fontWeight: FontWeight.w400, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
          var currentCategorie = LogicalComponents().categorieList[index];
          return currentCategorie;
        },
      ),
    );
  }
}
