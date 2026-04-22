
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomInput extends StatelessWidget {
  String hint;
  TextInputType? keyboardType = TextInputType.name;
  CustomInput({super.key, required this.hint, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Bo'sh bo'lmasligi kerak";
        }
        return null;
      },
      keyboardType: keyboardType,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: Colors.red, fontSize: 12),
        hintText: hint,
        fillColor: Colors.grey,
        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
      ),
    );
  }
}

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  final String text;
  final bool disabled;
  final VoidCallback onPressed;
  const PrimaryButton({
    super.key,
    required this.text,
    this.disabled = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        backgroundColor: disabled ? Colors.grey : Color.fromRGBO(54, 41, 183, 1),
      ),
      onPressed: onPressed,
      
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
