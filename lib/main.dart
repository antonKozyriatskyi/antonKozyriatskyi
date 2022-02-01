import 'package:flutter/foundation.dart';
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
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

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

    TextTheme applyCustomTextTheme(TextTheme theme) {
      return GoogleFonts.redHatDisplayTextTheme(theme);
    }

    var textTheme = applyCustomTextTheme(baseTheme.textTheme);

    textTheme = textTheme.copyWith(
      bodyText1: textTheme.bodyText1!.copyWith(fontSize: 18),
      bodyText2: textTheme.bodyText2!.copyWith(fontSize: 16),
      subtitle1: textTheme.subtitle1!.copyWith(fontSize: 18),
      subtitle2: textTheme.subtitle2!.copyWith(fontSize: 16),
    );

    final primaryTextTheme = applyCustomTextTheme(baseTheme.primaryTextTheme);

    final theme = baseTheme.copyWith(
      primaryColor: const Color.fromRGBO(16, 54, 92, 1),
      dividerColor: const Color.fromRGBO(88, 115, 141, 1),
      primaryTextTheme: primaryTextTheme,
      textTheme: textTheme,
    );

    return MaterialApp(
      theme: theme,
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
