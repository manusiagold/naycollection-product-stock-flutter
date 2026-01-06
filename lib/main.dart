// // ignore_for_file: use_key_in_widget_constructors
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'login_page.dart'; // Import LoginPage
import 'register_page.dart'; // Import RegisterPage

void main() {
  dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Authentication',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}

// import 'package:flutter/material.dart';
// import 'home_page.dart'; // Import HomePage

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Authentication',
//       debugShowCheckedModeBanner: false,
//       home: HomePage(), // Langsung menuju ke HomePage saat aplikasi dijalankan
//     );
//   }
// }
