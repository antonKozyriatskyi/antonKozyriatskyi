import 'package:anton_kozyriatskyi/models/Links.dart';

class Project {
  final String name;
  final String description;
  final List<String> keyPoints;
  final List<String> technologies;
  final DateTime startDate;
  final DateTime? endDate;
  final Links? links;

  Project({
    required this.name,
    required this.description,
    required this.keyPoints,
    required this.technologies,
    required this.startDate,
    this.endDate,
    this.links,
  });
}
