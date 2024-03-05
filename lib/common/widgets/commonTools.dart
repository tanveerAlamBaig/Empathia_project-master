import 'package:flutter/material.dart';

class CommonTools extends StatelessWidget {
  final String imagepath;
  final String text;
  final String routename;
  final Color? textColor;


  CommonTools({
    Key? key,
    required this.imagepath,
    required this.text,
    this.textColor,
    required this.routename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, routename);
        },
        child: Container(
          height: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),

            color: Colors.black54, // Grey background
          ),
          child: Row(
            children: [
              // Logo image on the left
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagepath,
                  width: 40, // Set the width of the logo
                  height: 40, // Set the height of the logo
                ),
              ),
              // Text in the center
              Expanded(
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: textColor ?? Colors.black, // Use the provided text color or default to black
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              // Icon on the right
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.white, // Set the color of the icon
            size: 24)
        ),
            ],
          ),
        ),
      ),
    );
  }
}
