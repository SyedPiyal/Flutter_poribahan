// To parse this JSON data, do
//
//     final registrationRequest = registrationRequestFromJson(jsonString);

import 'dart:convert';

RegistrationRequest registrationRequestFromJson(String str) =>
    RegistrationRequest.fromJson(json.decode(str));

String registrationRequestToJson(RegistrationRequest data) =>
    json.encode(data.toJson());

class RegistrationRequest {
  String? fullName;
  String? contactNumber;
  String? userName;
  String? gender;
  String? password;

  RegistrationRequest({
    this.fullName,
    this.contactNumber,
    this.userName,
    this.gender,
    this.password,
  });

  factory RegistrationRequest.fromJson(Map<String, dynamic> json) =>
      RegistrationRequest(
        fullName: json["FullName"],
        contactNumber: json["ContactNumber"],
        userName: json["UserName"],
        gender: json["Gender"],
        password: json["Password"],
      );

  Map<String, dynamic> toJson() => {
        "FullName": fullName,
        "ContactNumber": contactNumber,
        "UserName": userName,
        "Gender": gender,
        "Password": password,
      };
}
