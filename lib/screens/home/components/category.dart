import 'package:flutter/material.dart';
import '../../../constants.dart';

class Category extends StatelessWidget {
  final String title;
  final int numsOfItems;
  final VoidCallback onPressed;

  const Category(
      {Key key,
      @required this.title,
      @required this.numsOfItems,
      @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text.rich(TextSpan(
            text: title,
            style: TextStyle(color: kDarkBlackColor),
            children: [
              TextSpan(
                  text: " ($numsOfItems)",
                  style: TextStyle(color: kBodyTextColor))
            ])));
  }
}
