
import 'dart:async';
import 'package:get/get.dart';
import 'package:test_ui/routes/routes_name.dart';

class SplashServices{

  void issplash(){
    Timer(const Duration(seconds: 5), () => Get.toNamed(RoutesName.homeScreen));
  }
 

}