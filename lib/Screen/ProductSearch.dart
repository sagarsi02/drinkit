// ignore: file_names
import 'package:flutter/material.dart';

class ProductSearch extends StatefulWidget {
  const ProductSearch({super.key});

  @override
  State<ProductSearch> createState() => _ProductSearchState();
}

class _ProductSearchState extends State<ProductSearch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFFF6A00),
              ),
            ),
            label: const Text(
              'Search Product',
              style: TextStyle(
                fontSize: 17,
                color: Color(0xFFFF6A00),
              ),
            ),
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.search,
                color: Color(0xFFFF6A00),
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
