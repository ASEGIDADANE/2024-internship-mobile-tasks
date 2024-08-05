import 'package:flutter/material.dart';
import 'package:task6/features/product/presention/homes/showproduct.dart';
import 'profile.dart';

class Home extends StatelessWidget {
  const Home({Key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/detail');
        },
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Profile(),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "AVAILABLE PRODUCTS",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      
                    ),
                  ),
                  SizedBox(width:140),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      Navigator.pushNamed(context, '/search');
                    },
                  ),
                ],
              ),
                  ShowProduct(),

            ],
          ),
        ),
      ),
    );
  }
}