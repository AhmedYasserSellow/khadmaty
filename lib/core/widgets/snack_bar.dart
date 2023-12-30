import 'package:flutter/material.dart';

SnackBar customSnackBar(
  String text, {
  Color color = const Color(0xFFFF3D00),
}) {
  return SnackBar(
    backgroundColor: color,
    content: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
