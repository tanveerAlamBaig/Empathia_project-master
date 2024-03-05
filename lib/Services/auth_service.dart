import 'dart:convert';
// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_project/constant/utils.dart';
import 'package:fyp_project/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:fyp_project/constant/global_variables.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constant/error_handling.dart';
import 'package:provider/provider.dart';
import 'package:fyp_project/providers/user_provider.dart';

class AuthService {
  signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String userType,
  }) async {
    try {
      User user = User(
        id: '',
        email: email,
        password: password,
        type: userType,
        token: '', name: '', address: '', phone: '',
      );

      http.Response res = await http.post(
        Uri.parse('$uri/api/signup/$userType'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      print('Server response: ${res.body}');

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(context, 'Account Created.');
          // Delay before navigating to the respective login screen
          Future.delayed(Duration(seconds: 2), () {
            if (userType == 'patient') {
              Navigator.pushNamed(context, '/selectModule');
            } else if (userType == 'psycologist') {
              Navigator.pushNamed(context, '/signInAsPsych');
            }
          });
        },
      );
      var id = jsonDecode(res.body)['_id'];
      if (id != null) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userId', id);
      } else {
        print('Failed to save userId: id is null');
      }
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  signInUser({
    required BuildContext context,
    required String email,
    required String password,
    required String userType,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/signin/$userType'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      // print(res.body);

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          Provider.of<UserProvider>(context, listen: false).setUser(res.body);
          await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);
          await prefs.setString('userType', userType);
          showSnackBar(context, 'Login Successful');
          Future.delayed(Duration(seconds: 1), () {
            if (userType == 'patient') {
              // Navigator.pushAndRemoveUntil(context, '/homePatient');
              Navigator.pushReplacementNamed(
                  context, "/homePatient",);
            } else if (userType == 'psychologist') {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/homePsych', (route) => false);
            }
          });
        },
      );
    } catch (e) {
      // print( e.toString());
      showSnackBar(context, e.toString());
    }
  }

  void saveSelectedModules({
    required List<String> selectedModules,
    required String userId,
    required BuildContext context,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/updateSelectedModules/$userId'),
        body: jsonEncode({
          'userId': userId,
          'selectedModules': selectedModules,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      if (res.statusCode == 200) {
        showSnackBar(context, 'Modules saved successfully');
      } else {
        print('Server response: ${res.body}');
        showSnackBar(context, 'Failed to save the modules');
      }
    } catch (e) {
      print('Error: $e');
      showSnackBar(context, e.toString());
    }
  }
}
