import 'package:my_todo_app/repositories/models/contact.dart';

abstract class AbstractContactsRepository {
  Future<List<Contact>?> getContactsList();
  bool? addContact(Contact c);
  bool? editContact();
  bool? removeContact();
}
