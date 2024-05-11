// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
  Future<void> createUser() async {
    const String apiUrl = 'http://localhost:3000/api/createUser';

    // Example user data
    Map<String, dynamic> userData = {
      "first_name": "John",
      "last_name": "Doe",
      "email": "john.doe@example.com",
      "mobile_number": "1234567890",
      "date_of_birth": "1990-01-01",
      "gender": "Male",
      "pincode": "12345",
      "employee_id": "EMP123",
      "designation": "Software Engineer",
      "address": "123 Street, City"
    };

    // Encode user data to JSON
    String requestBody = jsonEncode(userData);

    try {
      final http.Response response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: requestBody,
      );

      if (response.statusCode == 201) {
        // User created successfully
        print('User created successfully');
        print(jsonDecode(response.body));
      } else {
        // Failed to create user
        print('Failed to create user. Error code: ${response.statusCode}');
        print(jsonDecode(response.body));
      }
    } catch (error) {
      // Exception while making the request
      print('Exception occurred: $error');
    }
  }
}