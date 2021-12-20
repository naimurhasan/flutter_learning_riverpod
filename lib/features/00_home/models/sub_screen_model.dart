import 'package:flutter/material.dart';
import 'package:riverpod_getting_started/services/navigation_service.dart';
import 'package:riverpod_getting_started/widgets/m_scaffold.dart';

class SubScreen{
  final String title;
  final Widget Function(String) screen;

  SubScreen(this.title, this.screen);

  void onTap(){
    debugPrint('Page $title');
    Navigator.push(NavigationService.key.currentContext!, MaterialPageRoute(builder: (_)=> screen(title)));
  }
}