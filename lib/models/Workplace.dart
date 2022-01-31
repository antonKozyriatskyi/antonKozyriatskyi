import 'package:anton_kozyriatskyi/models/Project.dart';

class Workplace {
  final String company;
  final String location;
  final DateTime startDate;
  final DateTime? endDate;
  final List<Project> projects;
  final bool isProductCompany;

  Workplace({
    required this.company,
    required this.location,
    required this.startDate,
    required this.endDate,
    required this.projects,
    this.isProductCompany = false,
  });
}