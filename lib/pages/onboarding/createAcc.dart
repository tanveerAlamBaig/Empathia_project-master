import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/customButton.dart';
import 'package:fyp_project/pages/onboarding/signInAs.dart';

import 'createAccAs.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
                text: 'Create Account',
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        pageBuilder:
                            (context, animation, secondaryAnimation) =>
                                const CreateAccAs(),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already a member?",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubik Regular',
                      color: Colors.white),
                ),
                const SizedBox(width: 4.0),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder:
                            (context, animation, secondaryAnimation) =>
                                const SignInAs(),
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
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Rubik Regular',
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
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
