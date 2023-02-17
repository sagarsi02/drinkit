// ignore_for_file: file_names
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   // ==============================================AppBar=====================================
    //   appBar: AppBar(
    //     leading: const Icon(Icons.menu),
    //     title: const Text('Drinkit'),
    //     actions: const [
    //       Padding(
    //         padding: EdgeInsets.symmetric(horizontal: 16),
    //         child: Icon(Icons.notifications),
    //       ),
    //     ],
    //     backgroundColor: const Color(0xFFFF6A00),
    //   ),
    //   // ==============================================Body=====================================
    //   body: Container(
    //     padding: const EdgeInsets.all(15.0),
    //     // ==============================================Body Search Field=====================================
    //     child: Column(
    //       children: [
    //         TextField(
    //           decoration: InputDecoration(
    //             border: const UnderlineInputBorder(),
    //             focusedBorder: const UnderlineInputBorder(
    //               borderSide: BorderSide(
    //                 color: Color(0xFFFF6A00),
    //               ),
    //             ),
    //             label: const Text(
    //               'Search Product',
    //               style: TextStyle(
    //                 fontSize: 17,
    //                 color: Color(0xFFFF6A00),
    //               ),
    //             ),
    //             suffixIcon: IconButton(
    //               icon: const Icon(
    //                 Icons.search,
    //                 color: Color(0xFFFF6A00),
    //               ),
    //               onPressed: () {},
    //             ),
    //           ),
    //         ),
    //         SizedBox(height: 20),
    //         Row(
    //           // crossAxisAlignment: CrossAxisAlignment.start,
    //           children: <Widget>[
    //             Expanded(
    //               child: Column(
    //                 children: <Widget>[
    //                   Image.network(
    //                     'https://source.unsplash.com/random/500x250/?wine',
    //                   ),
    //                   const Text(
    //                     'Red Wine',
    //                     style: TextStyle(
    //                       fontSize: 15,
    //                       fontWeight: FontWeight.bold,
    //                     ),
    //                   ),
    //                   Row(
    //                     children: const [
    //                       Text('Price : '),
    //                       Text('1195'),
    //                     ],
    //                   )
    //                 ],
    //               ),
    //             ),
    //             // Spacer(flex: 1),
    //             const SizedBox(height: 10),
    //           ],
    //         ),
    //       ],
    //     ),
    //   ),
    //   // ==============================================Bottom Navigation=====================================
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       //code to execute on button press
    //     },
    //     backgroundColor: const Color(0xFFFF6A00),
    //     child: const Icon(Icons.account_circle),
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //   bottomNavigationBar: BottomAppBar(
    //     color: const Color(0xFFFF6A00),
    //     shape: const CircularNotchedRectangle(),
    //     notchMargin: 5,
    //     child: Row(
    //       //children inside bottom appbar
    //       mainAxisSize: MainAxisSize.max,
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: <Widget>[
    //         IconButton(
    //           icon: const Icon(
    //             Icons.home,
    //             color: Colors.white,
    //           ),
    //           onPressed: () {},
    //         ),
    //         IconButton(
    //           icon: const Icon(
    //             Icons.trolley,
    //             color: Colors.white,
    //           ),
    //           onPressed: () {},
    //         ),
    //       ],
    //     ),
    //   ),
    // );
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
              backgroundColor: const Color(0xFFFF6A00),
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
            Icon(Icons.train, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_bike, size: 350),
            Icon(Icons.directions_boat, size: 350),
            Icon(Icons.movie_creation, size: 350),
          ],
        ),
      )),
    );
  }
}
