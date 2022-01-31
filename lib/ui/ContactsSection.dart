import 'package:flutter/material.dart';
import 'package:anton_kozyriatskyi/models/Contacts.dart';
import 'package:anton_kozyriatskyi/ui/ContactsRow.dart';
import 'package:anton_kozyriatskyi/ui/InfoSection.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class ContactsSection extends StatelessWidget {

  final String title;
  final Contacts contacts;

  const ContactsSection({
    Key? key,
    this.title = "Contacts",
    required this.contacts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoSection(
      title,
      [
        ContactRow(
          iconData: Icons.location_pin,
          text: contacts.location,
          onTap: (location) async {
            _openUrl("https://maps.google.com/?q=$location", true);
          },
        ),
        SizedBox(height: 8),
        if (contacts.phone != null) ...[
          ContactRow(
            iconData: Icons.phone,
            text: contacts.phone!,
            onTap: (email) async {
              _openUrl("tel:$email");
            },
          ),
          SizedBox(height: 8),
        ],
        ContactRow(
          iconData: Icons.email,
          text: contacts.email,
          onTap: (email) async {
            _openUrl("mailto:$email");
          },
        ),
        SizedBox(height: 8),
        ContactRow(
          svgPath: "github_logo.svg",
          text: contacts.github,
          onTap: (github) async {
            _openUrl("https://github.com/$github", true);
          },
        )
      ],
    );
  }

  void _openUrl(String url, [bool newTab = false]) {
    js.context.callMethod('open', [url, newTab ? '_blank' : '_self']);
  }
}
