import "package:flutter/material.dart";
import '../../../common/widgets/customButton.dart';
import '../../../common/widgets/customTextField.dart';


class ForgotPasswordPsych extends StatefulWidget {
  const ForgotPasswordPsych({super.key});

  @override
  _ForgotPasswordPsychState createState() => _ForgotPasswordPsychState();
}

class _ForgotPasswordPsychState extends State<ForgotPasswordPsych> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Colors.cyan[600],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Center(
                child: Image.asset(
                  'assets/forgotpasswd.png',height: 200, width: 500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        'Forgot Password',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Please enter the email id associated with your account.',
                        style: TextStyle(fontSize: 18, color: Colors.black38),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CustomTextField(
                          controller: _emailController,
                          hintText: 'Email',
                          labeltext: 'Enter Your Email',
                          prefixIconString: 'email',
                        ),
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth >= 600 ? 100 : 20,
                        ),
                        child: CustomButton(
                          text: 'Continue',
                          onTap: () {
                            Navigator.of(context, rootNavigator: true)
                                .pushNamed('/forgotPasswdPsych2');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
