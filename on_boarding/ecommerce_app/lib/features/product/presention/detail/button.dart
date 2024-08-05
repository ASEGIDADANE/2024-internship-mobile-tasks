import 'package:flutter/material.dart';

// ignore: camel_case_types
class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // Add functionality for DELETE button
            },
            style: ElevatedButton.styleFrom(),
            child: const Text('DELETE'),
          ),
          const SizedBox(width: 16),
          OutlinedButton(
            onPressed: () {
              // Add functionality for UPDATE button
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.blue),
              backgroundColor: Colors.blue,
            ),
            child: const Text(
              'UPDATE',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}