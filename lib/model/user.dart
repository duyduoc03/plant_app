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

}
List<User> demoUsers = [
  User(
    id: 1,
    username: "john_doe",
    fullName: "John Doe",
    email: "john.doe@example.com",
    phone: "1234567890",
    password: "password123",
    address: "123 Main Street, City, Country",
    role: "user",
  ),
  User(
    id: 2,
    username: "jane_smith",
    fullName: "Jane Smith",
    email: "jane.smith@example.com",
    phone: "9876543210",
    password: "password456",
    address: "456 Elm Street, City, Country",
    role: "admin",
  ),
  User(
    id: 3,
    username: "bob_johnson",
    fullName: "Bob Johnson",
    email: "bob.johnson@example.com",
    phone: "5555555555",
    password: "password789",
    address: "789 Oak Street, City, Country",
    role: "user",
  ),
  // Thêm các đối tượng User khác nếu cần
];