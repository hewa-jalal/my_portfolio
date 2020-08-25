import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/cubits/animation_cubit.dart';
import 'package:portfolio/models/switch_animation_model.dart';
import 'package:portfolio/tabs/about_tab.dart';
import 'package:portfolio/tabs/projects_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;
  var _animation = 'day_idle';
  var _isNight = false;
  var _disableFlare = false;

  static List<Widget> tabWidgets = [
    AboutTab(),
    // BlogTab(),
    ProjectsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    final animationCubit = BlocProvider.of<AnimationCubit>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          BlocBuilder<AnimationCubit, SwitchState>(
            builder: (context, state) {
              return Flexible(
                child: InkWell(
                  onTap: state.disableFlare
                      ? null
                      : () => animationCubit.changeAnimation(),
                  child: FlareActor(
                    'assets/switch_daytime.flr',
                    animation: state.animation,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: tabWidgets[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('About'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            title: Text('Projects'),
          )
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }

  void _changeAnimation() {
    if (_isNight) {
      setState(() => _animation = 'switch_day');
      _disableFlare = true;
      Future.delayed(Duration(seconds: 1), () {
        setState(() => _animation = 'day_idle');
        _disableFlare = false;
      });
      _isNight = false;
    } else {
      setState(() => _animation = 'switch_night');
      _disableFlare = true;
      Future.delayed(Duration(seconds: 1), () {
        setState(() => _animation = 'night_idle');
        _disableFlare = false;
      });
      _isNight = true;
    }
  }
}
