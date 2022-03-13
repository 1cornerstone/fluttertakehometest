

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'enum.dart';



class FreshFlow{



  static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
  static BuildContext get context => navigationKey.currentContext!;

  static NavigatorState? get currentState => navigationKey.currentState;


  static void snackBar(String message, ToastType type ) {
    ScaffoldMessenger.of(navigationKey.currentContext!).showSnackBar(
      SnackBar(
        content: Text(message,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400
          ),),
        duration: const Duration(seconds: 2),
        elevation: 0.0,
        margin:const EdgeInsets.all(10),
        backgroundColor: type == ToastType.SUCCESS ? const Color(0xff81CD2B):
        type == ToastType.INFO ? const Color(0xff5568FF): Colors.red,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }


}