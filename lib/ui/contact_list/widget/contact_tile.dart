import 'package:beekam/contact.dart';
import 'package:flutter/material.dart';
//Creating a Custom Widget
class ContactTile extends StatelessWidget {
  const ContactTile({
    super.key,
    required List<Contact> contacts,
  }) : _contacts = contacts;

  final List<Contact> _contacts;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_contacts[index].name),
      subtitle: Text(_contacts[index].email),
      trailing: IconButton(
        icon: Icon(
          _contacts[index].isFavorite ? Icons.star : Icons.star_border,
          color: _contacts[index].isFavorite ? Colors.amber : Colors.grey,
        ),
        onPressed: () {
          setState(() {
            _contacts[index].isFavorite = !_contacts[index].isFavorite;
            //Takes in higher order function which gets passed two contacts
            _contacts.sort((a, b) {
              if (a.isFavorite) {
                //ContactOne will be BEFORE ContactTwo
                return -1;
              } else if (b.isFavorite) {
                //ContactOne will be AFTER ContactTwo
                return 1;
              } else {
                //The position doesn't change
                return 0;
              }
            });
          });
  }
}

}