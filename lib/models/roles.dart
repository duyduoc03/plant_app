import 'package:flutter/material.dart';
import 'package:enum_to_string/enum_to_string.dart';

enum Roles {
  USER,
  // Add other roles here
}

class RolesEntity {
  final int id;
  final Roles name;

  RolesEntity({required this.id, required this.name});

  factory RolesEntity.fromJson(Map<String, dynamic> json) {
    return RolesEntity(
      id: json['id'],
      name: EnumToString.fromString(Roles.values, json['name']) ?? Roles.USER,
    );
  }
}