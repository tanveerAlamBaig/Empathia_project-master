import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/commonTools.dart';
// Assuming that CustomText is a defined widget that you want to use.

class Tools extends StatefulWidget {
  const Tools({super.key});

  @override
  State<Tools> createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    // Removed screenWidth as it is not used in this snippet.
    return Scaffold(
      backgroundColor: const Color(0xFF5f7470),
      body: ListView(
        children: [
          CommonTools(
            imagepath:
                'assets/meditate.png', // Make sure the asset exists in your project and is listed in pubspec.yaml
            text: 'Meditate',
            textColor: Colors
                .white,
            // routename: '/meditate', // If textColor is optional, it can be omitted or set to a default inside CommonTools
            routename: '/meditate', // If textColor is optional, it can be omitted or set to a default inside CommonTools
          ),
          CommonTools(
            imagepath:
                'assets/eLetter.png', // Make sure the asset exists in your project and is listed in pubspec.yaml
            text: 'Guided Journey',
            textColor: Colors
                .white, routename: '', // If textColor is optional, it can be omitted or set to a default inside CommonTools
          ),
          CommonTools(
            imagepath:
                'assets/idea.png', // Make sure the asset exists in your project and is listed in pubspec.yaml
            text: 'Thoughts',
            textColor: Colors
                .white, routename: '', // If textColor is optional, it can be omitted or set to a default inside CommonTools
          ),
          CommonTools(
            imagepath:
                'assets/hope.png', // Make sure the asset exists in your project and is listed in pubspec.yaml
            text: 'Hope',
            textColor: Colors
                .white, routename: '', // If textColor is optional, it can be omitted or set to a default inside CommonTools
          ),
          CommonTools(
            imagepath:
                'assets/health.png', // Make sure the asset exists in your project and is listed in pubspec.yaml
            text: 'Health',
            textColor: Colors.white, routename: '',
          ),

          // ... Add more widgets as needed
        ],
      ),
    );
  }
}
