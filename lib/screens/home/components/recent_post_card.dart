import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecentPostCard extends StatelessWidget {
  final String image, title;
  final VoidCallback onPressed;

  const RecentPostCard({
    Key key,
    @required this.title,
    @required this.image,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            Expanded(flex: 2, child: Image.asset(image)),
            SizedBox(width: kDefaultPadding),
            Expanded(
              flex: 5,
              child: Text(
                title,
                maxLines: 2,
                style: TextStyle(
                    color: kDarkBlackColor,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.bold,
                    height: 1.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
