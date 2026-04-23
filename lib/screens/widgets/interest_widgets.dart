import 'package:flutter/material.dart';

class InterestWidgets extends StatelessWidget {
  final String interestKind;
  final String deposit;
  final String rate;

  const InterestWidgets({
    super.key,
    required this.interestKind,
    required this.deposit,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  interestKind,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                SizedBox(width: 10),
                Text(
                  deposit,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  rate,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 46, 4, 233),
                  ),
                ),
              ],
            ),
          ),
          Container(height: 1, width: double.infinity, color: Colors.grey),
        ],
      ),
    );
  }
}
