import 'package:flutter/material.dart';
import 'package:my_todo_app/repositories/contacts_list/contacts_list_repository.dart';
import 'package:my_todo_app/repositories/models/contact.dart';
import 'package:my_todo_app/features/contacts_list/widgets/widgets.dart';

class AllContactsScreen extends StatefulWidget {
  const AllContactsScreen({super.key, required this.title});

  final String title;

  @override
  State<AllContactsScreen> createState() => _AllContactsScreenState();
}

class _AllContactsScreenState extends State<AllContactsScreen> {
  List<Contact>? _contacts;

  @override
  void initState() {
    _loadContacts();
    super.initState();
  }

  Future<void> _loadContacts() async {
    _contacts = await ContactsRepository().getContactsList();

    setState(() {});
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
                ContactsRepository().getContactsList();
              },
              icon: const Icon(Icons.data_array))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: (_contacts == null)
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: _contacts?.length,
                    itemBuilder: (context, i) {
                      final contactData = _contacts![i];
                      return ContactListItem(contactData: contactData);
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
