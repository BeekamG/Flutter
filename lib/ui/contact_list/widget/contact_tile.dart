import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:beekam/ui/model/contacts_model.dart';

//Creating a Custom Widget
class ContactTile extends StatelessWidget {
  const ContactTile({
    Key? key,
    required this.contactIndex,
  }) : super(key: key);

  final int contactIndex;

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ContactsModel>(
        builder: (context, child, model) {
      final displayed_contact = model.contacts[contactIndex];
      return ListTile(
        title: Text(displayed_contact.name),
        subtitle: Text(displayed_contact.email),
        trailing: IconButton(
            icon: Icon(
              displayed_contact.isFavorite ? Icons.star : Icons.star_border,
              color: displayed_contact.isFavorite ? Colors.amber : Colors.grey,
            ),
            onPressed: () {
              model.changeFavoriteStatus(contactIndex);
            }),
      );
    });
  }
}
