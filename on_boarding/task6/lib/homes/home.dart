import 'package:flutter/material.dart';
import 'package:task6/homes/showproduct.dart';
import 'profile.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your functionality here
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Profile(),
            SizedBox(height: 20),
            Text(
              "AVAILABLE PRODUCTS",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
              ),
            ),
            ShowProduct(),
          ],
        ),
      ),
    );
  }
}