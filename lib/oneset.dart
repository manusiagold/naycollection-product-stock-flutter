import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:pp_mobile/home_page.dart';

class Onesetpage extends StatefulWidget {
  @override
  _OnesetPageState createState() => _OnesetPageState();
}

class _OnesetPageState extends State<Onesetpage> {
  int _currentImageIndex = 0;
  String? selectedColor; // Variabel untuk menyimpan warna yang dipilih
  int? stock = 0; // Variabel untuk menyimpan stok yang diterima dari API

  final List<String> _productImages = [
    'assests/images/oneset1.jpg',
    'assests/images/oneset2.jpg',
    'assests/images/oneset3.jpg',
    'assests/images/oneset4.jpg',
    'assests/images/oneset5.jpg',
  ];

  final List<String> colors = ['Mint', 'Milo', 'Lemon', 'Purple', 'Emerald'];

  // Fungsi untuk mengambil data stok dari backend
  Future<void> fetchStock(String color) async {
    final response = await http.get(
      Uri.parse(
        'https://active-leopard-merely.ngrok-free.app/stock?type=Oneset Twill All Size Jumbo&color=$color',
      ),
    );

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      if (data.isNotEmpty) {
        setState(() {
          stock = data[0]['stock']; // Ambil stok dari response API
        });
      }
    } else {
      throw Exception('Failed to load stock');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Image.asset('assests/images/logo.PNG', width: 150),
            ),
            SizedBox(width: 10),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              child: Image.asset(
                _productImages[_currentImageIndex],
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pilih Variasi Produk',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var i = 0; i < colors.length; i++)
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentImageIndex = i;
                                selectedColor = colors[i];
                              });
                              fetchStock(
                                colors[i],
                              ); // Ambil stok setelah warna dipilih
                            },
                            child: Image.asset(
                              _productImages[i],
                              width: 50,
                              height: 50,
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Menampilkan stok produk
                  Text(
                    'Stok: ${stock ?? "Loading..."}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'NAY ONESET RAYON All Size Jumbo - Nyaman & Adem Setelan Baju Celana Casual Harian',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Motif Mewah Muslim.',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'Rp 123.500',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Rp 190.000',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
