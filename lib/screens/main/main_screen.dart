import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news/controllers/MenuControllers.dart';
import 'package:news/screens/home/home_screen.dart';
import '../../constants.dart';
import 'components/header.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
    final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldfKey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(child: HomeScreen()),
            )
          ],
        ),
      ),
    );
  }
}


