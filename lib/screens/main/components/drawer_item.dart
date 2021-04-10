import 'package:flutter/material.dart';

import '../../../constants.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onPressed;

  const DrawerItem(
      {Key key,
      @required this.title,
      @required this.isActive,
      @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        selectedTileColor: kPrimaryColor,
        onTap: onPressed,
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
