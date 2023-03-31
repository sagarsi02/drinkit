// ignore_for_file: file_names
import 'package:drinkit/Screen/ProductScreen/Bear.dart';
import 'package:drinkit/Screen/ProductScreen/Scotch.dart';
import 'package:drinkit/Screen/ProductScreen/Whiskey.dart';
import 'package:flutter/material.dart';

import 'Auth/Login.dart';
import 'Cart.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const SliverAppBar(
                leading: Icon(Icons.menu),
                title: Text('Drinkit'),
                actions: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(Icons.notifications),
                  ),
                ],
                backgroundColor: Color(0xFFFF6A00),
                pinned: true,
                floating: true,
                bottom: TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(child: Text('Whiskey')),
                    Tab(child: Text('Bear')),
                    Tab(child: Text('Scotch')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: <Widget>[
              Whiskey(),
              Bear(),
              Scotch(),
            ],
          ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const MyCart(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
