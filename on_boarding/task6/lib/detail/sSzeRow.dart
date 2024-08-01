// import 'package:flutter/material.dart';

// ignore: camel_case_types
import 'package:flutter/material.dart';

// ignore: camel_case_types
class sizeRow extends StatefulWidget {
  const sizeRow({super.key});

  @override
  State<sizeRow> createState() => _sizeRowState();
}

class _sizeRowState extends State<sizeRow> {
  int selected = 39;
  @override
  Widget build(BuildContext context) {
    final List<int> numbers = List.generate(11, (index) => 37 + index);

    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: numbers.map((number) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selected = number;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    color:
                        selected == number ? Colors.blueAccent : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      number.toString(),
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
