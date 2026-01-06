// import 'package:flutter/material.dart';
// import 'package:pp_mobile/home_page.dart';

// class GamisPage extends StatefulWidget {
//   @override
//   _GamisPageState createState() => _GamisPageState();
// }

// class _GamisPageState extends State<GamisPage> {
//   // This will hold the current image for the main product
//   int _currentImageIndex = 0;

//   // List of images for variations
//   final List<String> _productImages = [
//     'assests/images/gamis1.jpg',
//     'assests/images/gamis2.jpg',
//     'assests/images/gamis3.jpg',
//     'assests/images/gamis4.jpg',
//   ];

//   // GlobalKey for accessing the Scaffold
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey, // Assign GlobalKey to the Scaffold
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
//                             'assests/images/gamis1.jpg', // Variation (warna Black)
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
//                             'assests/images/gamis2.jpg', // Variation (warna Mocha)
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
//                             'assests/images/gamis3.jpg', // Variation (warna Turquoise)
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
//                             'assests/images/gamis4.jpg', // Variation (warna Lilac)
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
//                     'Gamis Elegant for Special Occasions',
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Elegant gamis for special events.',
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
//                         'Rp 285.500',
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
