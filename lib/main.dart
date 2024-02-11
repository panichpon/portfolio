import 'package:flutter/material.dart';

import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/product_screen.dart';
import 'package:portfolio/screens/cart_screen.dart';
import 'package:portfolio/screens/profile_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final tabs = [
    const HomeScreen(),
    const ProductScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        //fixedColor: Colors.white,
        //unselectedItemColor: Colors.brown,
        //backgroundColor: Colors.black12,
        selectedItemColor: Colors.amber[800],
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'หน้าหลัก',
              backgroundColor: Colors.greenAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_sharp),
              label: 'สินค้า',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.production_quantity_limits),
              label: 'ตระกร้าสินค้า',
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt),
              label: 'ผู้ใช้',
              backgroundColor: Colors.blue),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
