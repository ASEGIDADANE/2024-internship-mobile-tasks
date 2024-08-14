
import 'package:flutter/material.dart';

// ignore: camel_case_types
class about_product extends StatefulWidget {
  const about_product({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<about_product> {
  final TextEditingController _categoryController = TextEditingController();
  double _minPrice = 0;
  double _maxPrice = 1000;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Category"),
          TextField(
            controller: _categoryController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
          const SizedBox(height: 16),
          const Text("Price"),
          RangeSlider(
            values: RangeValues(_minPrice, _maxPrice),
            min: 0,
            max: 2000,
            divisions: 20,
            labels: RangeLabels(
              '\$${_minPrice.toStringAsFixed(2)}',
              '\$${_maxPrice.toStringAsFixed(2)}',
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _minPrice = values.start;
                _maxPrice = values.end;
              });
            },
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Add your logic here based on the category, minPrice, and maxPrice
              },
              child: const Text('APPLY', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}