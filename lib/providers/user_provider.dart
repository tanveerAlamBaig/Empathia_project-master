import 'package:flutter/cupertino.dart';
import 'package:fyp_project/models/user.dart';

class UserProvider extends ChangeNotifier{
  User _user = User(
      id: '',
      name: '',
      email: '',
      password: '',
      address: '',
      type: '',
      token: '',
      phone: ''
  );

  User get user => _user;

  void setUser(String user){
    _user = User.fromJson(user);
    notifyListeners();

  }
}