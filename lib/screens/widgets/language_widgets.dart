import 'package:flutter/material.dart';

class LanguageWidgets extends StatelessWidget {
  final String flagName;
  final String image;

  const LanguageWidgets({
    super.key,
    required this.flagName,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Image.asset(image),
                SizedBox(width: 20),
                Text(flagName),
                Spacer(),
                SizedBox(width: 10),
              ],
            ),
          ),
          Container(height: 1, width: double.infinity, color: Colors.grey),
        ],
      ),
    );
  }
}
