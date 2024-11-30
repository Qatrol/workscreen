import 'package:flutter/material.dart';

Widget buttonApp() {
  return Container(
    width: 317,
    height: 60,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xFF6B66D8),
          Color(0xFFBABAD7),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(100),
    ),
    child: Center(
      child: Text(
        "Купить",
        style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
      ),
    ),
  );
}
