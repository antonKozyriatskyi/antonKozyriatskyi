import 'package:flutter/material.dart';
import 'package:anton_kozyriatskyi/models/Profile.dart';
import 'package:anton_kozyriatskyi/ui/ContactsSection.dart';
import 'package:anton_kozyriatskyi/ui/EducationSection.dart';
import 'package:anton_kozyriatskyi/ui/InfoPanelHeader.dart';
import 'package:anton_kozyriatskyi/ui/LanguageSection.dart';

class InfoPanel extends StatelessWidget {
  final Profile profile;

  const InfoPanel({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 48, horizontal: 64),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: InfoPanelHeader(profile: profile),
          ),
          SizedBox(height: 48),
          ContactsSection(contacts: profile.contacts),
          SizedBox(height: 48),
          EducationSection(education: profile.education),
          SizedBox(height: 48),
          LanguageSection(languageKnowledge: profile.languageKnowledge),
        ],
      ),
    );
  }
}