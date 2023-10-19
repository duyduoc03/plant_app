
class Customers {
  final int id;
  final String name;
  final String birthday;
  final String address;
  final String phoneNumber;

  Customers({
    required this.id,
    required this.name,
    required this.birthday,
    required this.address,
    required this.phoneNumber,
  });

  factory Customers.fromJson(Map<String, dynamic> json) {
    return Customers(
      id: json['id'],
      name: json['name'],
      birthday: json['birthday'],
      address: json['address'],
      phoneNumber: json['phoneNumber'],
    );
  }
}