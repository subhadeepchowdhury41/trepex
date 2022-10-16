import 'package:flutter/cupertino.dart';
import 'package:trepex/app_models/user_model.dart';

class UserProvider extends ChangeNotifier {
  late User _user;

  // getter
  get user => _user;

  // setter
  void setUser(User user) {
    _user = user;
  }


}