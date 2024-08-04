import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_todo_app/repositories/models/contact.dart';

class ContactEditPage extends StatefulWidget {
  const ContactEditPage({super.key});

  @override
  State<ContactEditPage> createState() => _ContactEditPageState();
}

class _ContactEditPageState extends State<ContactEditPage> {
  Contact? contact;

  TextEditingController? _controller = TextEditingController(text: "Test");

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;

    if (args is! Contact) {
      log('You must provide Contact args');
      return;
    }

    try {
      contact = args;
    } catch (e) {
      log('Ошибка при присвоении: $e');
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    _controller?.value =
        TextEditingValue(text: contact?.name ?? "Unknown name");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Enter name'),
          ),
          Text(contact?.phone ?? '0000')
        ],
      ),
    );
  }
}
