import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_todo_app/repositories/models/contact.dart';

class ContactListItem extends StatelessWidget {
  const ContactListItem({
    super.key,
    required this.contactData,
  });

  final Contact contactData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        'assets/images/avatar.svg',
        width: 50,
      ),
      title: Text(contactData.name),
      trailing: Text(contactData.phone),
      onTap: () {
        Navigator.of(context).pushNamed('/contact', arguments: contactData);
      },
    );
  }
}
