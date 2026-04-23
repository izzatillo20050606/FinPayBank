import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchWidgets extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final VoidCallback? ontap;
  const SearchWidgets({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 14,
            right: 14,
            top: 10,
            bottom: 10,
          ),
          child: Container(
            height: 66,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              onTap: ontap,
              title: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text(
                subtitle,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              trailing: Image.asset(image),
            ),
          ),
        ),
      ],
    );
  }
}
