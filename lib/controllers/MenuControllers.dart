import 'package:get/get.dart';

class MenuController extends GetxController {
  RxInt _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;
  List<String> get menuItems =>
      ["Cases", "Services", "About Us", "Careers", "Blog", "Contact"];

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}
