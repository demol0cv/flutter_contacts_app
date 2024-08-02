import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_todo_app/contacts_app.dart';
import 'package:my_todo_app/repositories/contacts_list/contacts_list_repository.dart';
import 'package:my_todo_app/repositories/models/models.dart';

void main() async {
  Hive.registerAdapter(ContactAdapter());
  await Hive.initFlutter();

  const contactsBoxName = 'contacts_box';
  final contactsBox = await Hive.openBox<Contact>(contactsBoxName);

  GetIt.I.registerLazySingleton(
      () => ContactsRepository(contactsBox: contactsBox));

  runApp(const ContactsApp());
}
