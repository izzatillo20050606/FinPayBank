import 'package:flutter/material.dart';
class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: const Color.fromARGB(255, 33, 40, 243),
      selectedFontSize: 10,
      backgroundColor: Colors.white,
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Forgot"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Change"),
        BottomNavigationBarItem(icon: Icon(Icons.sms_failed_outlined), label: "Sign In"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Sign Up"),
      ],
    );
  }
}