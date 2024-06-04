import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 112, 255),
        toolbarHeight: 156,
        flexibleSpace:  FlexibleSpaceBar(
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
               const Text(
                  'Մուտք',
                  style: TextStyle(color: Colors.white),
                ),
               SizedBox(height: 30)
              ],
            ),
          ),
        ),
      ),
      body: Image.asset(
          "assets/image/picture.svg",
          height: 50,
          width: 50
      ),
    );
  }
}



