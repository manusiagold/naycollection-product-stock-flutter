// import 'package:flutter/material.dart';
// import 'package:pp_mobile/home_page.dart';

// class MidiPage extends StatefulWidget {
//   @override
//   _MidiPageState createState() => _MidiPageState();
// }

// class _MidiPageState extends State<MidiPage> {
//   // This will hold the current image for the main product
//   int _currentImageIndex = 0;

//   // List of images for variations
//   final List<String> _productImages = [
//     'assests/images/midi1.jpg', // Main Product Image 1
//     'assests/images/midi2.jpg', // Main Product Image 2
//     'assests/images/midi3.jpg', // Main Product Image 3
//     'assests/images/midi4.jpg', // Main Product Image 3
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false, // Hide the default back button
//         title: Row(
//           children: [
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => HomePage()), // Navigate to HomePage
//                 );
//               },
//               child: Image.asset(
//                 'assests/images/logo.PNG', // Logo Image Path
//                 width: 150,
//               ),
//             ),
//             SizedBox(width: 10), // Add space to separate logo and menu
//           ],
//         ),
//         actions: [
//           // Logout Button like in OnesetPage
//           IconButton(
//             icon: Icon(Icons.exit_to_app), // Logout icon
//             onPressed: () {
//               Navigator.pushReplacementNamed(
//                   context, '/login'); // Navigate to login page
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Main Product Image (Scrollable Variations)
//             Container(
//               width: double.infinity,
//               height: 400,
//               child: Image.asset(
//                 _productImages[
//                     _currentImageIndex], // Display the current selected image
//                 fit: BoxFit.cover,
//               ),
//             ),
//             // Product Variations
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Select Product Variation
//                   Text(
//                     'Pilih Variasi Produk',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   // Thumbnail Images for variations
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               _currentImageIndex =
//                                   0; // Change to the first variation image
//                             });
//                           },
//                           child: Image.asset(
//                             'assests/images/midi1.jpg', // Variation 1
//                             width: 50,
//                             height: 50,
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               _currentImageIndex =
//                                   1; // Change to the second variation image
//                             });
//                           },
//                           child: Image.asset(
//                             'assests/images/midi2.jpg', // Variation 2
//                             width: 50,
//                             height: 50,
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               _currentImageIndex =
//                                   2; // Change to the third variation image
//                             });
//                           },
//                           child: Image.asset(
//                             'assests/images/midi3.jpg', // Variation 2
//                             width: 50,
//                             height: 50,
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               _currentImageIndex =
//                                   3; // Change to the third variation image
//                             });
//                           },
//                           child: Image.asset(
//                             'assests/images/midi4.jpg', // Variation 3
//                             width: 50,
//                             height: 50,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   // Product Details
//                   Text(
//                     'Midi Dress for Elegant Occasions',
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Trendy midi dress for casual outings.',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   // Product Price
//                   Row(
//                     children: [
//                       Text(
//                         'Rp 390.000',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.green,
//                         ),
//                       ),
//                       // SizedBox(width: 10),
//                       // Text(
//                       //   'Rp 285.000',
//                       //   style: TextStyle(
//                       //     fontSize: 16,
//                       //     decoration: TextDecoration.lineThrough,
//                       //     color: Colors.grey,
//                       //   ),
//                       // ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
