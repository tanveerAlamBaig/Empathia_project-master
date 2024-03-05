import "package:flutter/material.dart";

import "../../../../common/widgets/customButton.dart";

class ForgotPasswordPatient extends StatefulWidget {
  const ForgotPasswordPatient({super.key});

  @override
  _ForgotPasswordPatientState createState() => _ForgotPasswordPatientState();
}

class _ForgotPasswordPatientState extends State<ForgotPasswordPatient> {
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
                    child: const Padding(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: Color(0xFF4D5D54),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Center(
                child: Image.asset(
                  'assets/forgotpasswd.png',
                  height: 200,
                  width: 500,
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
                        child: TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'Enter email',
                            prefixIcon: Icon(Icons.email),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xFF637E76)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(12.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                              BorderSide(width: 1, color: Colors.black45),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your email.';
                            }
                            // Validate email format
                            if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$')
                                .hasMatch(value)) {
                              return 'Please enter a valid email address.';
                            }
                            return null;
                          },
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
                                .pushNamed('/otpPatient');
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
