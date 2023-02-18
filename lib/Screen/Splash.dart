// ignore_for_file: use_build_context_synchronously

import 'package:drinkit/Screen/Home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MyHome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF6A00),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://fasdprevention.files.wordpress.com/2014/09/eng_whisky.jpg?w=731&h=1024'),
              ),
            ),
            Text(
              'Drink\'it',
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text('Smoking and Alcohol Consumption is Injurious to Health'),
          ],
        ),
      ),
    );
  }
}
