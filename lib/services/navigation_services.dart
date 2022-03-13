

import 'package:flutter/material.dart';

import '../freshflow.dart';

class NavigationServices{

  static  final NavigationServices _instance = NavigationServices._internal();

  NavigationServices._internal();

  factory NavigationServices()=> _instance;

  Future<T?>? pushNamed<T>(
      String route, {
        dynamic arguments,
      }) {
    return FreshFlow.currentState?.pushNamed<T>(
      route,
      arguments: arguments,

    );
  }

  Future<T?>? offNamed<T>(
      String route, {
        dynamic arguments,
      }) {
    return FreshFlow.currentState?.pushReplacementNamed(
      route,
      arguments: arguments,
    );
  }


  void goToPage(Widget page){
    FreshFlow.currentState?.push(MaterialPageRoute(builder: (builder)=>page));
  }







}