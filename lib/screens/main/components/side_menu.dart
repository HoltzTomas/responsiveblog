import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:news/controllers/MenuControllers.dart';

import '../../../constants.dart';
import 'drawer_item.dart';

class SideMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
  
    @override
    Widget build(BuildContext context) {
      return Drawer(
        child: Container(
            color: kDarkBlackColor,
            child: Obx(
              () => ListView(
                children: [
                  DrawerHeader(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 3.5),
                    child: SvgPicture.asset("assets/icons/logo.svg"),
                  )),
                  ...List.generate(
                      _controller.menuItems.length,
                      (index) => DrawerItem(
                          title: _controller.menuItems[index],
                          isActive: index == _controller.selectedIndex,
                          onPressed: () {
                            _controller.setMenuIndex(index);
                          }))
                ],
              ),
            )),
      );
    }
  
}