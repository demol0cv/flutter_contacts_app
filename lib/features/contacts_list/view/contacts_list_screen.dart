import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_todo_app/contact.dart';
import 'package:my_todo_app/features/contacts_list/widgets/widgets.dart';

class AllContactsScreen extends StatefulWidget {
  const AllContactsScreen({super.key, required this.title});

  final String title;

  @override
  State<AllContactsScreen> createState() => _AllContactsScreenState();
}

class _AllContactsScreenState extends State<AllContactsScreen> {
  List _contacts = [];

  Future<void> loadContacts() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final dynamic data = await json.decode(response);

    setState(() {
      _contacts = [];
      for (int i = 0; i < data["contacts"].length - 1; i++) {
        _contacts.add(data["contacts"][i]);
        log(_contacts[i].toString());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              loadContacts();
            },
            icon: const Icon(Icons.data_exploration),
          )
        ],
      ),
      body: Column(
        children: [
          const Text('Contacts'),
          Expanded(
            child: ListView.builder(
              itemCount: _contacts.length,
              itemBuilder: (context, i) {
                final contactData = Contact.fromMap(_contacts[i]);
                return ContactListItem(contactData: contactData);
              },
            ),
          ),
        ],
      ),
    );
  }
}
