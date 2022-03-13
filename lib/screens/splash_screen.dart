

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../utils/color.dart';
import '../view_models/splash_screen_view_model.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashScreenViewModel>.reactive(
        viewModelBuilder:()=> SplashScreenViewModel(),
        onModelReady: (mdl)=>mdl.init(),
        builder:( builder,viewModel,_)=>Scaffold(

          body: Center(
            child: Container(
              padding: const EdgeInsets.all(40),
              child: Text(
                "FF",
                style:Theme.of(context).textTheme.headline2?.copyWith(
                  color: Colors.white,
                  wordSpacing: 2
                ),
              ),
              decoration: const BoxDecoration(
                color:AppColor.primary,
                shape: BoxShape.circle
              ),
            ),
          ),


    ));
  }
}
