// ignore: file_names
import 'package:drinkit/Screen/ProductSearch.dart';
import 'package:customizable_counter/customizable_counter.dart';
import 'package:flutter/material.dart';

class Whiskey extends StatefulWidget {
  const Whiskey({super.key});

  @override
  State<Whiskey> createState() => _WhiskeyState();
}

class _WhiskeyState extends State<Whiskey> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          const ProductSearch(),
          const SizedBox(height: 5),
          for (int i = 1; i <= 3; i++)
            GestureDetector(
              onTap: () {
                print('Clicked');
              },
              child: Column(
                children: <Widget>[
                  Image.network(
                    'https://source.unsplash.com/random/500x250/?wine',
                  ),
                  Column(
                    children: const <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Red Wine',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Red wine is a type of wine made from dark-colored grape varieties. The color of the wine can range...',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF897C7B),
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Price : 1299',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF897C7B),
                        ),
                      ),
                      CustomizableCounter(
                        borderColor: Color(0xFFFF6A00),
                        backgroundColor: Color(0xFFFF6A00),
                        buttonText: "Add to Cart",
                        count: 0,
                        step: 1,
                        minCount: 0,
                        maxCount: 10,
                        incrementIcon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        decrementIcon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
