import 'package:beekam/contact.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

//Populating the Contacts to InitSate
// Adding isFavorite Field to a Contact Class-1
//Finishing isFavorite UI-2
//Setting state
//Sorting Contacts based on isFavorite
class ContactsListPage extends StatefulWidget {
  @override
  State<ContactsListPage> createState() => _ContactsListPageState();
}

class _ContactsListPageState extends State<ContactsListPage> {
  //underscore acts like a private acccess modifier.
  List<Contact> _contacts = List.empty();
  //Runs when the widget is initialized
  @override
  void initState() {
    super.initState();
    _contacts = List.generate(50, (index) {
      return Contact(
        name: faker.person.firstName() + ' ' + faker.person.lastName(),
        email: faker.internet.freeEmail(),
        phoneNumber: faker.randomGenerator.integer(1000000).toString(),
      );
    });
  }

  //build func:runs when the state changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      //Displaying a Vertical list and make alignment Center.
      body: ListView.builder(
        itemCount: _contacts.length,
        //Importing and using 3rd library
        //Runs & builds every single list item

        itemBuilder: (context, index) {
          return ContactTile(contacts: _contacts);
        },
      ),
    );
  }
}
