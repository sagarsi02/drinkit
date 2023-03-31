// ignore_for_file: file_names
import 'package:drinkit/Screen/ProductScreen/Bear.dart';
import 'package:drinkit/Screen/ProductScreen/Scotch.dart';
import 'package:drinkit/Screen/ProductScreen/Whiskey.dart';
import 'package:flutter/material.dart';

import 'Auth/Login.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
        ),
        backgroundColor: const Color(0xFFFF6A00),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFFF6A00),
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Order Track'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('All Order'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text('My Page!'),
      ),
      // **************************************************Bottom Navigattion*******************************
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const LoginPage(),
            ),
          );
        },
        child: const Icon(Icons.account_circle_rounded),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFFF6A00),
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.trolley,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
