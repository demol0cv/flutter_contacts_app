import 'package:my_todo_app/repositories/models/contact.dart';

abstract class AbstractContactsRepository {
  Future<List<Contact>?> getContactsList();
}
