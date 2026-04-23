import 'package:flutter/material.dart';

class ExchangeRateWidgets extends StatelessWidget {
  final String flagName;
  final String buy;
  final String sell;
  final String image;

  const ExchangeRateWidgets({
    super.key,
    required this.flagName,
    required this.buy,
    required this.sell,
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
                Text(
                  flagName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                SizedBox(width: 10),
                Text(
                  buy,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  sell,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
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
