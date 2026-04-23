import 'package:flutter/material.dart';

Widget input({
  required String title,
  required TextEditingController controller,
  required String currency,
  required bool isFrom,
  required VoidCallback onChanged,
  required VoidCallback onCurrencyTap,
}) {
  bool isFilled = controller.text.isNotEmpty;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, style: const TextStyle(color: Colors.grey)),
      const SizedBox(height: 6),

      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xffF5F6FA),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isFilled ? Colors.blue : Colors.grey.shade300,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                onChanged: (_) => onChanged(),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Amount",
                ),
              ),
            ),
            Container(
              width: 1,
              height: 24,
              color: Colors.grey,
              margin: const EdgeInsets.symmetric(horizontal: 10),
            ),

            GestureDetector(
              onTap: onCurrencyTap,
              child: Row(
                children: [
                  Text(
                    currency,
                    style: TextStyle(
                      color: isFilled ? Colors.blue : Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
