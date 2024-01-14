import 'package:flutter/material.dart';
import 'package:ostello_task/theme/app_color.dart';
import 'package:ostello_task/theme/app_font.dart';
import 'package:ostello_task/theme/assets_strings.dart';

class SyllabusCard extends StatelessWidget {
  const SyllabusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24.0)),
        ),
        elevation: 0,
        color: const Color(0XFFf4f4f4),
        child: Column(
          children: [
            Container(
              height: 101,
              decoration: BoxDecoration(
                  color: AppColorScheme().primaryColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 18, top: 12),
                        child: Text(
                          "Organic Chemistry (11th)",
                          style: FontThemeClass().regular(context,
                              color: AppColorScheme().whiteColor),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 51,
                        height: 22,
                        margin: const EdgeInsets.only(right: 20, top: 12),
                        padding: const EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            color: AppColorScheme().whiteColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Image(image: AssetImage(AssetName.coin)),
                            ),
                            Text(
                              "500",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColorScheme().primaryColor),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 48,
                        margin: const EdgeInsets.only(left: 18, top: 6),
                        child: Image(image: AssetImage(AssetName.profile)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 11),
                        child: Text(
                          "Aakash Institute",
                          style: FontThemeClass().appBarText(context,
                              fontWeight: FontWeight.w400,
                              color: AppColorScheme().whiteColor),
                        ),
                      ),
                      const Spacer(),
                      Container(
                          padding: const EdgeInsets.only(top: 3),
                          width: 20,
                          child: Image(image: AssetImage(AssetName.star))),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 5, right: 18, left: 6),
                        child: Text(
                          "3.9/5",
                          style: FontThemeClass().appBarText(context,
                              fontWeight: FontWeight.w400,
                              color: AppColorScheme().whiteColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(AssetName.course))),
              child: Center(
                child: SizedBox(
                  width: 45,
                  child: Image(image: AssetImage(AssetName.playWhite)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 18, right: 18),
              child: Text(
                "The study of carbon compounds that always contain carbon and it is limited to other",
                style: FontThemeClass().medium(context,
                    fontWeight: FontWeight.w400,
                    color: AppColorScheme().blackColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
              child: Row(
                children: [
                  SizedBox(
                    width: 18,
                    child: Image(image: AssetImage(AssetName.play)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Text(
                      "14 lessons",
                      style: FontThemeClass().medium(context,
                          fontWeight: FontWeight.w400, color: Colors.grey),
                    ),
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      Container(
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage(AssetName.enrolled1)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 21),
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage(AssetName.enrolled2)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 42),
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage(AssetName.enrolled3)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 8),
                    child: Text(
                      "200+ studentss enrolled",
                      style: FontThemeClass().italicSmall(context,
                          fontWeight: FontWeight.w400, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
