class User {
  final int id;
  final String username;
  final String fullName;
  final String email;
  final String phone;
  final String password;
  final String address;
  final String role;

  User({
    required this.id,
    required this.username,
    required this.fullName,
    required this.email,
    required this.phone,
    required this.password,
    required this.address,
    required this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['User_Id'],
      username: json['Username'],
      fullName: json['FullName'],
      email: json['Email'],
      phone: json['Phone'],
      password: json['Password'],
      address: json['Address'],
      role: json['Role'],
    );
  }
}