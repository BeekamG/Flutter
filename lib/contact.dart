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
    this.isFavorite = true,
  });
}
