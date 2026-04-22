import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeWidgetsPage extends StatelessWidget {
  final String text;
  final String svgAsset;

  const HomeWidgetsPage({
    super.key,
    required this.text,
    required this.svgAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      // height: 100,
      // width: 100,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(svgAsset),
          Text(text,textAlign: TextAlign.center,)
        ]
      ),
    );
  }
}
