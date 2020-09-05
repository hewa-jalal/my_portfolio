import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/models/switch_animation_model.dart';
import 'package:portfolio/pages/home_page.dart';

import 'cubits/animation_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AnimationCubit(),
      child: BlocBuilder<AnimationCubit, AnimationState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: state.isDark ? ThemeData.dark() : null,
            home: HomePage(),
          );
        },
      ),
    );
  }
}
