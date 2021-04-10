import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news/screens/main/components/socal.dart';
import 'package:news/screens/main/components/web_menu.dart';

import '../../../constants.dart';


class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            constraints: BoxConstraints(maxWidth: kMaxWidth),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/logo.svg'),
                    Spacer(),
                    WebMenu(),
                    Spacer(),
                    Socal(),
                  ],
                ),
                SizedBox(height: kDefaultPadding * 2),
                Text("Welcome to Our Blog",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: Text(
                      'Stay update with the newest design and development stories, case studies, \nand insights shared by DesignDK Team',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Raleway',
                          height: 1.5),
                    )),
                FittedBox(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "Learn more",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        SizedBox(width: kDefaultPadding / 2),
                        Icon(Icons.arrow_forward, color: Colors.white)  
                      ],
                    )),
                ),
                SizedBox(height: kDefaultPadding)
              ],
            ),
          )
        ],
      )),
    );
  }
}
