import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:portfolio/config/assets.dart';
import 'package:portfolio/config/constants.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                child: FlutterLogo(),
              ),
              SizedBox(height: 20),
              Text(
                'Hiwa Jalal',
                textScaleFactor: 4,
              ),
              SizedBox(height: 20),
              Text(
                'Flutter Developer',
                style: Theme.of(context).textTheme.caption,
                textScaleFactor: 2,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.github)),
                    label: Text('Github'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_GITHUB, 'adityadroid'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.twitter)),
                    label: Text('Twitter'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_TWITTER, 'adityadroid'),
                  ),
                  // FlatButton.icon(
                  //   icon: SizedBox(
                  //       width: 20,
                  //       height: 20,
                  //       child: Image.asset(Assets.medium)),
                  //   label: Text('Medium'),
                  //   onPressed: () => html.window
                  //       .open(Constants.PROFILE_MEDIUM, 'adityadroid'),
                  // )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.instagram)),
                    label: Text('Instagram'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_INSTAGRAM, 'adityadroid'),
                  ),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.facebook)),
                    label: Text('Facebook'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_FACEBOOK, 'adityadroid'),
                  ),
                  // FlatButton.icon(
                  //   icon: SizedBox(
                  //       width: 20,
                  //       height: 20,
                  //       child: Image.asset(Assets.linkedin)),
                  //   label: Text('Linkedin'),
                  //   onPressed: () => html.window
                  //       .open(Constants.PROFILE_LINKEDIN, 'adityadroid'),
                  // )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
