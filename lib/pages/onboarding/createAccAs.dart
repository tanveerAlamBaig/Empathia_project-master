import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/customButton.dart';
import '../patient/SignUpPatient/createAccountPatient.dart';
import '../psychologist/SignUpPsych/createAccountPsych.dart';

class CreateAccAs extends StatelessWidget {
  const CreateAccAs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color(0xFF43766C), // Start color
              Color(0xFF637E76),
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 250),
            const Padding(
              padding: EdgeInsets.only(left: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Create Account As',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Rubik Regular',
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            CustomButton(
                text: 'Psychologist',
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        pageBuilder:
                            (context, animation, secondaryAnimation) =>
                        const CreateAccountPsych(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        }),
                  );
                }),
            const SizedBox(height: 10),
            CustomButton(
              text: 'Patient',
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                    const CreateAccountPatient(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
