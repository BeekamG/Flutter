class Contact {
  String name;
  String email;
  // String- not all numbers are valid mathematical numbers
  String phoneNumber;
  bool isFavorite;

  // Constructors with optional named parameters
  Contact({
    required this.name,
    required this.email,
    required this.phoneNumber,
    this.isFavorite = false,
  });
}
//Adding isFavorite Field to a Contact Class- Har'a
