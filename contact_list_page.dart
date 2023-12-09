import 'package:flutter/material.dart';

class ContactsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Java',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Php',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'C++',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'C',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
