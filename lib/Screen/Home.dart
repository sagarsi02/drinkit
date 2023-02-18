// ignore_for_file: file_names
import 'package:drinkit/Screen/Bear.dart';
import 'package:drinkit/Screen/Whiskey.dart';
import 'package:flutter/material.dart';

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
                    Tab(child: Text('Rum')),
                    Tab(child: Text('Moctail')),
                    Tab(child: Text('Premium')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: <Widget>[
              Whiskey(),
              Bear(),
              Icon(Icons.directions_car, size: 350),
              Icon(Icons.directions_bike, size: 350),
              Icon(Icons.directions_boat, size: 350),
              Icon(Icons.movie_creation, size: 350),
            ],
          ),
        ),
        // **************************************************Bottom Navigattion*******************************
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            null;
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
                onPressed: () {},
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
      ),
    );
  }
}
