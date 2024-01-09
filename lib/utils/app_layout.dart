import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return  Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    double precentage = pixels/  getScreenHeight() ;
    return  getScreenHeight() * precentage;
  }

  static getwidth(double pixels) {
    double precentage =pixels/ getScreenWidth() ; // 1000/200=5 to get %
    return  getScreenWidth()* precentage; //1000/5 =200 to get number
  }
  //  static getwidth(double pixels) {
  //   double precentage = getScreenWidth() / pixels; // 1000/200=5 to get %
  //   return  getScreenWidth()/ precentage; //1000/5 =200 to get number
  // }
}
