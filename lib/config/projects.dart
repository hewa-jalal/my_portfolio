import 'package:portfolio/models/project_model.dart';
import 'assets.dart';

final List<Project> projects = [
  Project(
      name: 'Truelancer',
      image: Assets.truelancer,
      description:
          'Truelancer Mobile App is a Freelancing Platform. You can Search Jobs & Hire Freelancers for work.',
      link: 'https://play.google.com/store/apps/details?id=com.truelancer.app'),
  Project(
      name: 'Messio',
      image: Assets.messio,
      description:
          'An Open-Source Messaging App built using Flutter and Firebase. Part of the series \'60 Days of Flutter',
      link: 'https://github.com/adityadroid/messio'),
  Project(
      name: 'Savaari',
      image: Assets.savaari_consumer,
      description:
          'Savaari is the leading player in Outstation Cabs, Hourly Rental Cabs, Airport Pickups and Airport Drop Taxis. ',
      link: 'https://play.google.com/store/apps/details?id=com.savaari.app'),
];
