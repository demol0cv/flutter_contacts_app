import 'package:my_todo_app/features/contact_item/view/view.dart';
import 'package:my_todo_app/features/contacts_list/view/view.dart';

final routes = {
  '/': (context) => const AllContactsScreen(title: "ContactsApp"),
  '/contact': (context) => const ContactScreen(),
};
