import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({Key? key, required this.name, required this.color, required this.onTap}) : super(key: key);
  String name;
  Color color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 65.0,
        color: color,
        child: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        padding: const EdgeInsets.all(18.0),
      ),
    );
  }
}