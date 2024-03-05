import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String labeltext;
  final String prefixIconString;

  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.labeltext,
      required this.prefixIconString});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Icon? prefixIcon;

  // Check the value of prefixIconString and set the appropriate icon
  @override
  Widget build(BuildContext context) {
    Widget getPrefixIcon() {
      switch (widget.prefixIconString) {
        case 'email':
          return const Icon(Icons.email_outlined, color: Color(0xFF4D5D54));
        case 'phone':
          return const Icon(Icons.phone_android_rounded,
              color: Color(0xFF4D5D54));
        case 'password':
          return const Icon(Icons.remove_red_eye, color: Color(0xFF4D5D54));
        default:
          // Handle other cases or provide a default icon
          return const Icon(Icons.person_outline_outlined,
              color: Color(0xFF4D5D54));
      }
    }

    return TextFormField(
      controller: widget.controller,
      obscureText: widget.prefixIconString == 'password',
      decoration: InputDecoration(
        labelText: widget.labeltext,

        hintText: widget.hintText,
        fillColor: Colors.white,
        filled: true,

        prefixIcon: getPrefixIcon(),
        // Icons.alternate_email,
        // color: Color(0xff58C6EC),

        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.black45),
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Color(0xFF637E76)),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your ${widget.hintText}';
        }
        return null; // Return null for valid input
      },
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight weight;
  final Color textColor;
  const CustomText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.weight,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          softWrap: true,
          style: TextStyle(
              fontFamily: 'Rubik Medium',
              fontSize: fontSize,
              fontWeight: weight,
              color: textColor),
        ),
      ],
    );
  }
}
