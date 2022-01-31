import 'package:flutter/material.dart';
import 'package:anton_kozyriatskyi/data/profile.dart';
import 'package:anton_kozyriatskyi/ext/BuildContext.dart';
import 'package:anton_kozyriatskyi/models/Profile.dart';
import 'package:anton_kozyriatskyi/ui/AboutMeSection.dart';
import 'package:anton_kozyriatskyi/ui/ContentLayout.dart';
import 'package:anton_kozyriatskyi/ui/InfoPanel.dart';
import 'package:anton_kozyriatskyi/ui/SideProjectSection.dart';
import 'package:anton_kozyriatskyi/ui/TwoPaneLayout.dart';
import 'package:anton_kozyriatskyi/ui/WorkplacesSection.dart';

void main() {
  runApp(
    App(
      profile: MyProfile,
    ),
  );
}

class App extends StatelessWidget {
  final Profile profile;

  const App({Key? key, required this.profile}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final baseTheme = context.theme();
    final baseTextTheme = baseTheme.textTheme;

    return MaterialApp(
      theme: baseTheme.copyWith(
        primaryColor: Color.fromRGBO(16, 54, 92, 1),
        dividerColor: Color.fromRGBO(88, 115, 141, 1),
        textTheme: baseTextTheme.copyWith(
          bodyText1: baseTextTheme.bodyText1!.copyWith(fontSize: 18),
          bodyText2: baseTextTheme.bodyText2!.copyWith(fontSize: 16),
          subtitle1: baseTextTheme.subtitle1!.copyWith(fontSize: 18),
          subtitle2: baseTextTheme.subtitle2!.copyWith(fontSize: 16),
        ),
      ),
      home: HomePage(
        profile: profile,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final Profile profile;

  HomePage({
    Key? key,
    required this.profile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TwoPaneLayout(
        minLeftPanelWidth: 390,
        minRightPanelWidth: 400,
        leftChild: (context) => InfoPanel(
          profile: profile,
        ),
        rightChild: (context) => ContentLayout(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AboutMeSection(
                description: profile.aboutMe,
              ),
              SizedBox(height: 36),
              WorkplacesSection(
                workplaces: profile.workplaces,
              ),
              SizedBox(height: 24),
              SideProjectsSection(
                projects: profile.sideProjects,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
