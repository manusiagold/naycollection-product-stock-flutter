import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'home_page.dart'; // Import halaman home

// URL server backend Anda
final baseUrl = dotenv.env['API_URL'];

class AuthService {
  // Fungsi untuk registrasi pengguna
  Future<String> register(String name, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/register'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'name': name, 'password': password}),
      );

      if (response.statusCode == 201) {
        return 'Registrasi berhasil';
      } else {
        return 'Registrasi gagal: ${response.body}';
      }
    } catch (e) {
      return 'Error: $e';
    }
  }

  // Fungsi untuk login pengguna
  Future<String> login(
    String name,
    String password,
    BuildContext context,
  ) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/login'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'name': name, 'password': password}),
      );

      if (response.statusCode == 200) {
        // Login berhasil, arahkan ke HomePage
        Navigator.pushReplacement(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ), // Arahkan ke halaman HomePage
        );
        return 'Login berhasil';
      } else {
        return 'Login gagal: ${response.body}';
      }
    } catch (e) {
      return 'Error: $e';
    }
  }
}
