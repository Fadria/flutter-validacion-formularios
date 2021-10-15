import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier
{
  GlobalKey<FormState> formKey = new GlobalKey();

  String email = "";
  String password = "";

  bool isValidForm()
  {
    print(formKey.currentState?.validate());

    print("$email - $password");
    
    return formKey.currentState?.validate() ?? false;
  }
}