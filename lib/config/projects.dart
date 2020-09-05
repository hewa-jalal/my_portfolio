import 'package:portfolio/models/project_model.dart';
import 'assets.dart';

final List<Project> projects = [
  Project(
      name: 'Islam Time',
      image: Assets.islamTime,
      description:
          'A Islamic app that shows you when the day start and ends in Islam also it shows you midnight and last third of night time.',
      link:
          'https://play.google.com/store/apps/details?id=com.hiwad.islamtime'),
  Project(
      name: 'in bed ideas',
      image: Assets.inBedIdeas,
      description:
          'we all get million dollars idea in bed! now you can catch them and become a milionare.',
      link: 'https://play.google.com/store/apps/details?id=com.hiwa.inbedidea'),
  Project(
      name: 'Fruits vs Vegetables',
      image: Assets.fruitVsVegetable,
      description:
          'ever wondered if a food is a fruit or vegetable? now you can easily discover that.',
      link:
          'https://play.google.com/store/apps/details?id=com.hiwa.food_type_quiz'),
];
