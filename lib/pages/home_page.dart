import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/cubits/animation_cubit.dart';
import 'package:portfolio/models/switch_animation_model.dart';
import 'package:portfolio/tabs/about_tab.dart';
import 'package:portfolio/tabs/projects_tab.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedIndex = 0;

  static List<Widget> tabWidgets = [
    AboutTab(),
    ProjectsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    final animationCubit = BlocProvider.of<AnimationCubit>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          _SwitchTheme(animationCubit: animationCubit),
        ],
      ),
      body: Center(child: tabWidgets[_selectedIndex]),
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
}

class _SwitchTheme extends StatelessWidget {
  const _SwitchTheme({
    Key key,
    @required this.animationCubit,
  }) : super(key: key);

  final AnimationCubit animationCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimationCubit, AnimationState>(
      builder: (context, state) {
        return Align(
          alignment: Alignment.topRight,
          child: InkWell(
            onTap: state.disableFlare
                ? null
                : () => animationCubit.changeAnimation(),
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              width: 130,
              height: 170,
              margin: const EdgeInsets.only(right: 8.0),
              child: FlareActor(
                'assets/switch_daytime.flr',
                animation: state.animation,
                // fit: BoxFit.fill,
                alignment: Alignment.topRight,
              ),
            ),
          ),
        );
      },
    );
  }
}
