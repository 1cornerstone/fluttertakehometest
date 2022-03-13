
import 'package:stacked/stacked.dart';

import '../services/navigation_services.dart';

class SplashScreenViewModel extends BaseViewModel{


  void init(){

    Future.delayed(const Duration(seconds:2),(){
      NavigationServices().offNamed('login');
    });

  }

}