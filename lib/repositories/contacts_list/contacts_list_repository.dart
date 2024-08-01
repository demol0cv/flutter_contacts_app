import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:my_todo_app/repositories/abstract_contacts_repository.dart';
import 'package:my_todo_app/repositories/models/contact.dart';

class ContactsRepository implements AbstractContactsRepository {
  @override
  Future<List<Contact>?> getContactsList() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response)['contacts'] as List<dynamic>;

    // debugPrint('DP: ' + data.runtimeType.toString());
    final dataList = data.map((e) => Contact.fromMap(e)).toList();

    // debugPrint(dataList.toString());
    return dataList;
  }
}
