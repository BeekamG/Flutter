import 'package:beekam/contact.dart';
import 'package:faker/faker.dart';
import 'package:scoped_model/scoped_model.dart';
//Adding a ScopedModel

class ContactsModel extends Model {
  //underscore acts like a private acccess modifier.
  List<Contact> _contacts = List.generate(50, (index) {
    return Contact(
      name: faker.person.firstName() + ' ' + faker.person.lastName(),
      email: faker.internet.freeEmail(),
      phoneNumber: faker.randomGenerator.integer(1000000).toString(),
    );
  });
  //get only property, makes sure that we cannot overwrite contacts
  //from d/t classes
  List<Contact> get contacts => _contacts;
  //Moving Functionality to the ContactsModel
  void changeFavoriteStatus(int index) {
    _contacts[index].isFavorite = !_contacts[index].isFavorite;
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
  }
}
