import 'package:flutter/material.dart';

class CommonArticle extends StatelessWidget {
  final String imagePath;
  final String text;
  final Color? textColor;
  final double? fontSize;
  final String routeName;


  const CommonArticle({
    super.key,
    required this.imagePath,
    required this.text,
    this.fontSize,
    this.textColor, required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.width * 0.2;
    double containerWidth = MediaQuery.of(context).size.width * 0.5;


    return Builder(
        builder: (context) {
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context,routeName);
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
                  borderRadius: BorderRadius.circular(20),

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 6, top: 6, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            text,
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.w600,
                              fontSize: fontSize,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}


class CommonArticle2 extends StatelessWidget {
  final String imagePath;
  final String text;
  final Color? textColor;


  const CommonArticle2({
    super.key,
    required this.imagePath,
    required this.text,
    this.textColor,


  });


  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.width * 0.2;
    double containerWidth = MediaQuery.of(context).size.width * 0.5;

    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        // borderRadius: BorderRadius.only(
        //   bottomRight: Radius.circular(30.0),
        //   bottomLeft: Radius.circular(30.0),),

      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 6, top: 6, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

class dividerr extends StatelessWidget {
  const dividerr({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Divider(
        color: Colors.black45,
      ),
    );
  }
}