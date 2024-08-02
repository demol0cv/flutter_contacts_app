import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_todo_app/repositories/models/contact.dart';

class ContactEditPage extends StatefulWidget {
  const ContactEditPage({super.key});

  @override
  State<ContactEditPage> createState() => _ContactEditPageState();
}

class _ContactEditPageState extends State<ContactEditPage> {
  Contact? contact;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;

    if (args is! Contact) {
      log('You must provide String args');
      return;
    }

    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: const Column(
        children: [Text('data 1'), Text('data 2')],
      ),
    );
  }
}
