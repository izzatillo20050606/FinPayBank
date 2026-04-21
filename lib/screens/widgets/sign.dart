import 'package:flutter/material.dart';

Widget textField(String hint, {bool isPassword = false}) {
  return TextField(
    decoration: InputDecoration(
      hintText: hint,
      fillColor: Colors.grey,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
    ),
  );
}

Widget elevatedButton({
  required String text,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    onPressed:onPressed,
    style: ElevatedButton.styleFrom(
      minimumSize: const Size(328, 44),
      backgroundColor: Colors.deepPurple,
    ),
    child: Text(
      text,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
  );
}
