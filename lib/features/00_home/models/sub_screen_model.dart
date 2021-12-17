import 'package:flutter/material.dart';
import 'package:riverpod_getting_started/services/navigation_service.dart';

class SubScreen{
  final String title;
  final Widget screen;

  SubScreen(this.title, this.screen);

  void onTap(){
    Navigator.push(NavigationService.key.currentContext!, MaterialPageRoute(builder: (_)=> screen));
  }
}