
//     final createUser = createUserFromJson(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

CreateUser createUserFromJson(String str) => CreateUser.fromJson(json.decode(str));

String createUserToJson(CreateUser data) => json.encode(data.toJson());

class CreateUser {
    String? firstName;
    String? lastName;
    String? email;
    String? mobileNumber;
    DateTime? dateOfBirth;
    String? gender;
    String? pincode;
    String? employeeId;
    String? designation;
    String? address;

    CreateUser({
        this.firstName,
        this.lastName,
        this.email,
        this.mobileNumber,
        this.dateOfBirth,
        this.gender,
        this.pincode,
        this.employeeId,
        this.designation,
        this.address,
    });

    factory CreateUser.fromJson(Map<String, dynamic> json) => CreateUser(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        mobileNumber: json["mobile_number"],
        dateOfBirth: json["date_of_birth"] == null ? null : DateTime.parse(json["date_of_birth"]),
        gender: json["gender"],
        pincode: json["pincode"],
        employeeId: json["employee_id"],
        designation: json["designation"],
        address: json["address"],
    );

    Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "mobile_number": mobileNumber,
        "date_of_birth": "${dateOfBirth!.year.toString().padLeft(4, '0')}-${dateOfBirth!.month.toString().padLeft(2, '0')}-${dateOfBirth!.day.toString().padLeft(2, '0')}",
        "gender": gender,
        "pincode": pincode,
        "employee_id": employeeId,
        "designation": designation,
        "address": address,
    };
}
