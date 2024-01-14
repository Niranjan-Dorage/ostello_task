import 'package:flutter/material.dart';
import 'package:ostello_task/components/logical_components.dart';
import 'package:ostello_task/theme/assets_strings.dart';

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
                      borderRadius: BorderRadius.circular(100),
                    ),
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
                  style: FontThemeClass().appBarText(
                    context,
                    color: AppColorScheme().whiteColor,
                  ),
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
                  suffixIcon: Container(
                    padding: const EdgeInsets.only(left: 15, right: 18),
                    height: 10,
                    width: 10,
                    child:
                        const Image(image: AssetImage("assets/images/mic.png")),
                  ),
                  prefixIcon: Container(
                    padding: const EdgeInsets.only(left: 22, right: 10),
                    height: 10,
                    width: 10,
                    child: const Image(
                        image: AssetImage("assets/images/search.png")),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 12,
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: AppColorScheme().whiteColor,
                  filled: true,
                  focusColor: AppColorScheme().whiteColor,
                  hintText: 'Search',
                  hintStyle: FontThemeClass().medium(
                    context,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: LogicalComponents().categorieList.length,
              itemBuilder: (BuildContext context, int index) {
                var currentCategorie = LogicalComponents().categorieList[index];
                return currentCategorie;
              },
            ),
            Stack(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 50),
                  width: double.infinity,
                  height: 131,
                  decoration: BoxDecoration(
                      color: AppColorScheme().primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 160,
                      child: Image(image: AssetImage(AssetName.girl)),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 35, bottom: 16),
                          child: Text(
                            "Confused what next steps\n to take in your career?",
                            style: FontThemeClass().medium(context,
                                color: AppColorScheme().whiteColor,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColorScheme().whiteColor,
                              elevation: 0,
                              padding: const EdgeInsets.all(0),
                              foregroundColor: AppColorScheme().primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    300), // Rounded corners
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "/categories");
                            },
                            child: const Center(
                                child: SizedBox(
                                    width: 198,
                                    height: 30,
                                    child: Center(
                                        child: Text(
                                      "Build your career roadmap",
                                      style: TextStyle(fontSize: 12),
                                    ))))),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
