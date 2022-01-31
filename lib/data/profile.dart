import 'package:anton_kozyriatskyi/models/all_models.dart';

part 'education.dart';
part 'contacts.dart';
part 'language_knowledge.dart';
part 'workplaces.dart';

part 'side_projects.dart';

// ignore: non_constant_identifier_names
final MyProfile = Profile(
  name: "Anton",
  surname: "Kozyriatskyi",
  aboutMe: "I'm mobile engineer with over 5 years of experience.\nDuring my career I had a chance to work on both native and cross-platform applications of various complexity, starting from simple client-server application to interactive apps with maps and custom UI components to rich and configurable feature-libraries.\nI also have experience writing beckend with Ktor and create web apps using Flutter.\nMy last 2 years I've been working on fin-tech products.",
  position: "Android Engineer",
  contacts: contacts,
  education: education,
  languageKnowledge: languageKnowledge,
  workplaces: workplaces,
  sideProjects: sideProjects,
);