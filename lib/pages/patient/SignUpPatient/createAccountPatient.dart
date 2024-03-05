import 'package:fyp_project/common/widgets/customButton.dart';
import 'package:fyp_project/pages/patient/SignUpPatient/signInAsPatient.dart';
import 'package:fyp_project/services/auth_service.dart';
import 'package:flutter/material.dart';

class CreateAccountPatient extends StatelessWidget {
  const CreateAccountPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return const Registration();
  }
}

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _signUpFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  bool _isObscure = true;

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  void signUpUser() {
    authService.signUpUser(
        context: context,
        email: emailcontroller.text,
        password: passwordcontroller.text,
        userType: 'patient');
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFD9EDBF),
      body: Form(
        key: _signUpFormKey,
        child: ListView(
          children: [
            const SizedBox(
              height: 5.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/patientSignUp.png',
                  height: 200,
                  width: 500,
                ),
                const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Rubik Regular',
                    color: Color(0xFF4D5D54),
                  ),
                ),
                const Text(
                  'By creating a free account',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Rubik Regular',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 21),
              child: Text(
                'Email',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: emailcontroller,
                decoration: const InputDecoration(
                  labelText: 'Enter email',
                  prefixIcon: Icon(Icons.email),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xFF637E76)),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(width: 1, color: Colors.black45),
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
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 21),
              child: Text(
                'Password',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: passwordcontroller,
                obscureText: _isObscure,
                decoration: InputDecoration(
                  labelText: 'Enter password',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Color(0xFF637E76)),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(width: 1, color: Colors.black45),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password.';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth >= 600 ? 100 : 20,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                      const SignInAsPatient(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = 0.0;
                        var end = 1.0;
                        var curve = Curves.ease;
                        var tween = Tween(begin: begin, end: end)
                            .chain(CurveTween(curve: curve));

                        return FadeTransition(
                          opacity: animation.drive(tween),
                          child: child,
                        );
                      },
                      transitionDuration: const Duration(microseconds: 500),
                    ),
                  );
                },
                child: CustomButton(
                  text: "Register",
                  onTap: () {
                    if (_signUpFormKey.currentState!.validate()) {
                      signUpUser();
                    }
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already a member? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Rubik Regular',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/signInAsPatient');
                  },
                  child: const Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubik Regular',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4D5D54),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
