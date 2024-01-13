import 'package:ostello_task/screens/categories/categorie_card.dart';
import 'package:ostello_task/screens/syllabus/lesson_card.dart';
import 'package:ostello_task/theme/assets_strings.dart';

import '../screens/syllabus/reviews.dart';

class LogicalComponents {
  List<LessonCard> lessonList = [
    const LessonCard(),
    const LessonCard(),
    const LessonCard(),
    const LessonCard(),
    const LessonCard(),
    const LessonCard(),
  ];
  List<Reviews> reviewsList = [
    const Reviews(),
    const Reviews(),
    const Reviews(),
  ];

  List<CategorieCard> categorieList = [
    CategorieCard(
      title: "Marketing",
      path: AssetName.marketing,
    ),
    CategorieCard(
      title: "Development",
      path: AssetName.development,
    ),
    CategorieCard(
      title: "Design",
      path: AssetName.psychology,
    ),
    CategorieCard(
      title: "Foreign Language",
      path: AssetName.foreing,
    ),
    CategorieCard(
      title: "Finance ",
      path: AssetName.marketing,
    ),
    CategorieCard(
      title: "Business",
      path: AssetName.business,
    ),
    CategorieCard(
      title: "Psychology",
      path: AssetName.psychology,
    ),
    CategorieCard(
      title: "Economics",
      path: AssetName.economics,
    )
  ];
}
