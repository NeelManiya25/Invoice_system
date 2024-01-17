import 'package:flutter/material.dart';

import 'views/screens/AddDetail_page.dart';
import 'views/screens/Login_page.dart';
import 'views/screens/Pdf_page.dart';
import 'views/screens/Splash_screen.dart';




void main() {
  runApp(
    MaterialApp(
      initialRoute: "Splash_screen",
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homepage(),
        'Splash_screen': (context) => Splash_screen(),
        'Login_page': (context) =>  Login_page(),
        'AddDetail_page' : (context) => AddDetail_page(),
        'Pdf_page': (context) =>  Pdf_page(),
      },
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              "Let's Start\nInvoice Maker",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 38,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          setState(() {
            Navigator.of(context).pushNamed('AddDetail_page');
          });
        },
        child: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
