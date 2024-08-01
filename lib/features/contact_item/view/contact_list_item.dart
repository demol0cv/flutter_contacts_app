import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:my_todo_app/repositories/repositories.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  Contact? contact;

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    log("CScreen: ${args.runtimeType}");
    if (args == null) {
      log('You must provide args');
      return;
    }

    if (args is! Contact) {
      log('You must provide String args');
      return;
    }
    try {
      contact = args;
    } catch (e) {
      log('ошибка при присвоении: $e');
    }
    super.didChangeDependencies();
    // TODO: implement didChangeDependencies
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contact?.name ?? '...'),
      ),
      body: Column(
        children: [
          Text(contact?.name ?? '...'),
          Text(contact?.phone ?? 'Unknown phone')
        ],
      ),
    );
  }
}
