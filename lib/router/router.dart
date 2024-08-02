import 'package:my_todo_app/features/contact_edit/view/contact_edit_page.dart';
import 'package:my_todo_app/features/contact_item/view/view.dart';
import 'package:my_todo_app/features/contacts_list/view/view.dart';

final routes = {
  '/': (context) => const AllContactsScreen(title: "ContactsApp"),
  '/contact': (context) => const ContactScreen(),
  '/editcontact': (context) => const ContactEditPage(),
};
