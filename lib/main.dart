import 'package:beekam/ui/contact_list/contact_list_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//Koottu
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: ContactsListPage(),
    );
  }
}
