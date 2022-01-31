import 'all_models.dart';

class Profile {
  final String name;
  final String surname;
  final String aboutMe;
  final String position;
  final Contacts contacts;
  final Education education;
  final List<LanguageKnowledge> languageKnowledge;
  final List<Workplace> workplaces;
  final List<Project> sideProjects;

  Profile({
    required this.name,
    required this.surname,
    required this.aboutMe,
    required this.position,
    required this.contacts,
    required this.education,
    required this.languageKnowledge,
    required this.workplaces,
    required this.sideProjects,
  });
}