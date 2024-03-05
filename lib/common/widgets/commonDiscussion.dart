import 'package:flutter/material.dart';

class CommonDiscussion extends StatelessWidget {
  final String imagePath;
  final String text;
  final String text2;
  final Color? textColor;
  final String Routename;

  const CommonDiscussion({
    Key? key,
    required this.imagePath,
    required this.text,
    this.textColor,
    required this.text2,
    required this.Routename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 15, bottom: 5),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, Routename);
        },
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Logo image on the left
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: ClipOval(
                  child: Image.asset(
                    imagePath,
                    width: 62,
                    height: 62,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10), // Add some space between the image and text
              // Text in the center
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    text,

                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,

                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    text2,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: Colors.white70,
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
