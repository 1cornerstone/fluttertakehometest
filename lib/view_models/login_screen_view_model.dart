

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../enum.dart';
import '../freshflow.dart';
import '../services/firebase_services.dart';
import '../services/navigation_services.dart';
import '../utils/regrex_validator.dart';

class LoginScreenViewModel extends BaseViewModel{

  late TextEditingController email,password;
  final formState = GlobalKey<FormState>();

  bool isLoading = false;

  void init(){
    email = TextEditingController();
   password = TextEditingController();

  }


  String? isEmail (String val)=> RegrexValidator().isEmail(val) ? null :"Invalid Email";


  void onLoginPressed(){

    if (formState.currentState!.validate()) {
        isLoading = true;
        notifyListeners();

        FirebaseServices().signIn(email.text, password.text).then((value){

          if(value != null) {
            FreshFlow.snackBar(value, ToastType.ERROR);
            isLoading = false;
            notifyListeners();
            return;
          }

          NavigationServices().offNamed('products');


        });

    }

  }








}