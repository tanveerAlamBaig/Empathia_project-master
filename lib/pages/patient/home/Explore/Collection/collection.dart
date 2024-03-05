import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/commonArticle.dart';
import '../../../../../common/widgets/customTextField.dart';

class Collections extends StatefulWidget {
  const Collections({super.key});

  @override
  State<Collections> createState() => _CollectionsState();
}

class _CollectionsState extends State<Collections> {
  var textColor = const Color(0x00000000);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF5f7470),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomText(
                text: 'FEATURED COLLECTION',
                fontSize: 16,
                weight: FontWeight.normal,
                textColor: Colors.white,
              ),
            ),
            Container(
              height: 250,
              child: const CommonArticle(
                imagePath: 'assets/astronaut.jpg',
                text: "An Astronaut's Guide to\nLoneliness with Scott Kelly",
                textColor: Colors.white,
                fontSize: 24,
                routeName: '/astronautsGuide',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomText(
                text: 'HEALTHY HABITS',
                fontSize: 16,
                weight: FontWeight.normal,
                textColor: Colors.white,
              ),
            ),
            Container(
              height: 200, // Specify a fixed height for the GridView
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 1, // Set to 1 for horizontal scrolling
                children: [
                  const CommonArticle(
                    imagePath: 'assets/financialStress.jpg',
                    text: "Financial Stress",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/financialStress',
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed((context), '/homePsych');
                    },
                    child: const CommonArticle(
                      imagePath: 'assets/learningToSleep.jpg',
                      text: "Learning to \nSleep",
                      textColor: Colors.white,
                      fontSize: 18,
                      routeName: '/learningToSleep',
                    ),
                  ),
                  const CommonArticle(
                    imagePath: 'assets/phoneAddict.jpg',
                    text: "Break Up With\nYour Phone",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/breakUpWithYourPhone',
                  ),
                  const CommonArticle(
                    imagePath: 'assets/meditation.jpg',
                    text: "Making\nMeditation Stick",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/makingMeditationStick',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomText(
                text: 'FEEL GOOD',
                fontSize: 16,
                weight: FontWeight.normal,
                textColor: Colors.white,
              ),
            ),
            Container(
              height: 200, // Specify a fixed height for the GridView
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 1, // Set to 1 for horizontal scrolling
                children: const [
                  CommonArticle(
                    imagePath: 'assets/getInspired.jpg',
                    text: "Get Inspired",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/getInspired',
                  ),
                  CommonArticle(
                    imagePath: 'assets/getChill.jpg',
                    text: "Get Chill",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/getChill',
                  ),
                  CommonArticle(
                    imagePath: 'assets/selfEsteem.jpg',
                    text: "Self-Esteem\nBooster Kit",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/selfEsteemBoosterKit',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomText(
                text: 'GETTING THROUGH IT',
                fontSize: 16,
                weight: FontWeight.normal,
                textColor: Colors.white,
              ),
            ),
            Container(
              height: 200, // Specify a fixed height for the GridView
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 1, // Set to 1 for horizontal scrolling
                children: const [
                  CommonArticle(
                    imagePath: 'assets/manageSocialAnxiety.jpg',
                    text: "Managing Social\nAnxiety",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/managingSocialAnxiety',
                  ),
                  CommonArticle(
                    imagePath: 'assets/panicAttack.jpg',
                    text: "Panic Attack 101",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/panicAttack101',
                  ),
                  CommonArticle(
                    imagePath: 'assets/badDay.jpg',
                    text: "Turn A Bad Day\nAround",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/turnABadDayAround',
                  ),
                  CommonArticle(
                    imagePath: 'assets/astronautGuide.jpg',
                    text:
                        "An Astronaut's\nGuide To\nLoneliness with\nScott Kelly",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/astronautsGuide',
                  ),
                  CommonArticle(
                    imagePath: 'assets/brokenHeart.jpg',
                    text: "Healing\nHeartbreak",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/healingHeartBreak',
                  ),
                  CommonArticle(
                    imagePath: 'assets/grieve.jpg',
                    text: "Permission To\nGrieve",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/permissionToGrieve',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomText(
                text: 'PARENTING ',
                fontSize: 16,
                weight: FontWeight.normal,
                textColor: Colors.white,
              ),
            ),
            Container(
              height: 200, // Specify a fixed height for the GridView
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 1, // Set to 1 for horizontal scrolling
                children: const [
                  CommonArticle(
                    imagePath: 'assets/burnout.jpg',
                    text: "Parenting Burnout",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/parentingBurnout',
                  ),
                  CommonArticle(
                    imagePath: 'assets/sos.jpg',
                    text: "Parenting SOS",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/parentingSOS',
                  ),
                  CommonArticle(
                    imagePath: 'assets/stressKids.jpeg',
                    text: "Dealing With \nStressed Kids",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/dealingWithStressed Kids',
                  ),
                  CommonArticle(
                    imagePath: 'assets/family.jpg',
                    text: "Building A Family\nPractice",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/buildingAFamilyPractice',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomText(
                text: 'HOW WE WORK',
                fontSize: 16,
                weight: FontWeight.normal,
                textColor: Colors.white,
              ),
            ),
            Container(
              height: 200, // Specify a fixed height for the GridView
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: 1, // Set to 1 for horizontal scrolling
                children: const [
                  CommonArticle(
                    imagePath: 'assets/work&life.jpg',
                    text: "Build Work Life\nBalance",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/buildWorkLifeBalance',
                  ),
                  CommonArticle(
                    imagePath: 'assets/workLife.jpg',
                    text: "Dealing With Work\nStress",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/dealingWithWorkStress',
                  ),
                  CommonArticle(
                    imagePath: 'assets/confidence.jpg',
                    text: "Gaining\nConfidence at Work",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/gainingConfidenceAtWork',
                  ),
                  CommonArticle(
                    imagePath: 'assets/dealingWithBurnout.jpg',
                    text: "Dealing With\nBurnout",
                    textColor: Colors.white,
                    fontSize: 18,
                    routeName: '/dealingWithBurnout',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
