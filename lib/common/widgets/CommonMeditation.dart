import 'package:flutter/material.dart';

class CommonMeditate extends StatelessWidget {
  final String imagePath;
  final String text;
  final Color? textColor;
  final double? fontSize;
  final String routeName;

  const CommonMeditate({
    super.key,
    required this.imagePath,
    required this.text,
    this.fontSize,
    this.textColor,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height * 0.2;
    double containerWidth = MediaQuery.of(context).size.width * 0.4;

    return Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: containerHeight,
            width: containerWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              border: Border.all(color: Color(0xFF1BC88C), width: 1.0),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                text,
                softWrap: true,
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
