import 'package:flutter/material.dart';

import '../../../constants.dart';

class SidebarContainer extends StatelessWidget {
  final String title;
  final Widget child;

  const SidebarContainer({Key key, @required this.child, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding / 4))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  color: kDarkBlackColor, fontWeight: FontWeight.w600)),
          SizedBox(height: kDefaultPadding / 2),
          child
        ],
      ),
    );
  }
}
