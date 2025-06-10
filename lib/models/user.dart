class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String street;
  final String city;
  final String companyName;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.street,
    required this.city,
    required this.companyName,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      street: json['address']['street'],
      city: json['address']['city'],
      companyName: json['company']['name'],
    );
  }
}
