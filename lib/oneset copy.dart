// import 'package:flutter/material.dart';
// import 'package:pp_mobile/home_page.dart';

// class OnesetPage extends StatefulWidget {
//   @override
//   _OnesetPageState createState() => _OnesetPageState();
// }

// class _OnesetPageState extends State<OnesetPage> {
//   int _currentImageIndex = 0;

//   final List<String> _productImages = [
//     'assests/images/oneset1.jpg',
//     'assests/images/oneset2.jpg',
//     'assests/images/oneset3.jpg',
//     'assests/images/oneset4.jpg',
//     'assests/images/oneset5.jpg',
//   ];

//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Row(
//           children: [
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => HomePage()),
//                 );
//               },
//               child: Image.asset(
//                 'assests/images/logo.PNG',
//                 width: 150,
//               ),
//             ),
//             SizedBox(width: 10),
//           ],
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.exit_to_app),
//             onPressed: () {
//               Navigator.pushReplacementNamed(context, '/login');
//             },
//           ),
//         ],
//       ),
//       endDrawer: Drawer(
//         child: ListView(
//           children: [
//             ListTile(
//               title: Text('Logout'),
//               onTap: () {
//                 Navigator.pushReplacementNamed(context, '/login');
//               },
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               height: 400,
//               child: Image.asset(
//                 _productImages[_currentImageIndex],
//                 fit: BoxFit.cover,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Pilih Variasi Produk',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               _currentImageIndex = 0;
//                             });
//                           },
//                           child: Image.asset(
//                             'assests/images/oneset1.jpg', // Variation (warna Black)
//                             width: 50,
//                             height: 50,
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               _currentImageIndex = 1;
//                             });
//                           },
//                           child: Image.asset(
//                             'assests/images/oneset2.jpg', // Variation (warna Black)
//                             width: 50,
//                             height: 50,
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               _currentImageIndex = 2;
//                             });
//                           },
//                           child: Image.asset(
//                             'assests/images/oneset3.jpg', // Variation (warna Black)
//                             width: 50,
//                             height: 50,
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               _currentImageIndex = 3;
//                             });
//                           },
//                           child: Image.asset(
//                             'assests/images/oneset4.jpg', // Variation (warna Black)
//                             width: 50,
//                             height: 50,
//                           ),
//                         ),
//                         SizedBox(width: 10),
//                         GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               _currentImageIndex = 4;
//                             });
//                           },
//                           child: Image.asset(
//                             'assests/images/oneset5.jpg', // Variation (warna Black)
//                             width: 50,
//                             height: 50,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     'NAY ONESET RAYON All Size Jumbo - Nyaman & Adem Setelan Baju Celana Casual Harian',
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Motif Mewah Muslim',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Row(
//                     children: [
//                       Text(
//                         'Rp 123.500',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.green,
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text(
//                         'Rp 190.000',
//                         style: TextStyle(
//                           fontSize: 16,
//                           decoration: TextDecoration.lineThrough,
//                           color: Colors.grey,
//                         ),
//                       ),
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
