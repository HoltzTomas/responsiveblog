import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  GlobalKey<ScaffoldState> _scaffoldfKey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems =>
      ["Cases", "Services", "About Us", "Careers", "Blog", "Contact"];
  GlobalKey<ScaffoldState> get scaffoldfKey => _scaffoldfKey;

  void openOrCloseDrawer() {
    if (_scaffoldfKey.currentState.isDrawerOpen) {
      _scaffoldfKey.currentState.openEndDrawer();
    } else {
      _scaffoldfKey.currentState.openDrawer();
    }
  }

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
