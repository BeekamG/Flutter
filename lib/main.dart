import 'package:beekam/ui/contact_list/contact_list_page.dart';
import 'package:beekam/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

//Koottu
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Using Scoped Model
    return ScopedModel(
      model: ContactsModel(),
      child: MaterialApp(
        title: 'Contacts',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: ContactsListPage(),
      ),
    );
  }
}
