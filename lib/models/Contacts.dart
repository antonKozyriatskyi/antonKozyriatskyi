class Contacts {

  final String location;
  final String? phone;
  final String email;
  final String github;

  Contacts({
    required this.location,
    this.phone,
    required this.email,
    required this.github,
  });
}