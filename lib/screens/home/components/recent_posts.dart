import 'package:flutter/material.dart';
import 'package:news/screens/home/components/recent_post_card.dart';
import 'package:news/screens/home/components/sidebar_continer.dart';
import '../../../constants.dart';

class RecentPosts extends StatelessWidget {
  const RecentPosts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
        child: Column(
          children: [
            RecentPostCard(
              title: "Our 'Secret' Formula to Online Workshops",
              image: 'assets/images/recent_1.png',
              onPressed: () {},
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
             RecentPostCard(
              title: "Digital Product Innovation from Warsaw with Love",
              image: 'assets/images/recent_2.png',
              onPressed: () {},
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
          ],
        ),
        title: "Recent Posts");
  }
}
