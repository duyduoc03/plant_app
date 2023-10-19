import 'package:flutter/material.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'roles.dart';

enum AccountStatus {
  DEACTIVE,
  // Add other account statuses here
}

class Accounts {
  final int id;
  final String avt;
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String phoneNumber;
  final String birthday;
  final String gender;
  final String address;
  final String verifyCode;
  final String referralCode;
  final bool verified;
  final String password;
  final Set<RolesEntity> roles;
  final AccountStatus status;

  Accounts({
    required this.id,
    required this.avt,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.birthday,
    required this.gender,
    required this.address,
    required this.verifyCode,
    required this.referralCode,
    required this.verified,
    required this.password,
    required this.roles,
    required this.status,
  });

  factory Accounts.fromJson(Map<String, dynamic> json) {
    return Accounts(
      id: json['id'],
      avt: json['avt'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      username: json['username'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      birthday: json['birthday'],
      gender: json['gender'],
      address: json['address'],
      verifyCode: json['verifyCode'],
      referralCode: json['referralCode'],
      verified: json['verified'],
      password: json['password'],
      roles: (json['roles'] as List<dynamic>)
          .map((role) => RolesEntity.fromJson(role))
          .toSet(),
      status: EnumToString.fromString(AccountStatus.values, json['status']) ??
          AccountStatus.DEACTIVE,
    );
  }
}