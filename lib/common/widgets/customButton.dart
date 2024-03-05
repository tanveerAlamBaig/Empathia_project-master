import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final double fontsize;
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.fontsize = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
          const Size(300, 55),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontsize,
            color: const Color(0xFF637E76),
            fontFamily: 'Rubik Regular'),
      ),
    );
  }
}


