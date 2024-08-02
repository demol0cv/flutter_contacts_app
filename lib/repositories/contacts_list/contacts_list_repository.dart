// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:my_todo_app/repositories/abstract_contacts_repository.dart';
import 'package:my_todo_app/repositories/models/contact.dart';

class ContactsRepository implements AbstractContactsRepository {
  final Box<Contact> contactsBox;

  ContactsRepository({
    required this.contactsBox,
  });

  @override
  Future<List<Contact>?> getContactsList() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response)['contacts'] as List<dynamic>;

    // debugPrint('DP: ' + data.runtimeType.toString());
    final dataList = data.map((e) => Contact.fromMap(e)).toList();

    // debugPrint(dataList.toString());
    return dataList;
  }

  @override
  bool? addContact(Contact c) {
    try {
      contactsBox.add(c);
      return true;
    } catch (e) {
      print("Возникло исключение при сохранении контакта ${e.toString()}");
      return false;
    }
  }

  @override
  bool? editContact() {
    // TODO: implement editContact
    throw UnimplementedError();
  }

  @override
  bool? removeContact() {
    // TODO: implement removeContact
    throw UnimplementedError();
  }
}
