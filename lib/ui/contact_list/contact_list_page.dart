import 'package:scoped_model/scoped_model.dart';
import 'package:beekam/ui/contact_list/widget/contact_tile.dart';
import 'package:beekam/ui/model/contacts_model.dart';
import 'package:flutter/material.dart';

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
  //build func:runs when the state changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contacts'),
        ),
        //Displaying a Vertical list and make alignment Center.
        body: ScopedModelDescendant<ContactsModel>(
            //Runs when notifyListeners() is called from the model
            builder: (context, child, model) {
          return ListView.builder(
            itemCount: model.contacts.length,
            //Importing and using 3rd library
            //Runs & builds every single list item
            //Accessing the Model Through ScopedModelDescendant-Dec 28-1
            //Notifying Listeners of ScopedModel-Dec 28-2

            itemBuilder: (context, index) {
              return ContactTile(
                contactIndex: index,
              );
            },
          );
        }));
  }
}
