import 'package:flutter/material.dart';
import 'package:news/screens/home/components/sidebar_continer.dart';

import 'category.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Categories",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Category(
            title: "Artificial Intelligence",
            numsOfItems: 3,
            onPressed: () {},
          ),
          Category(
            title: "Flutter",
            numsOfItems: 8,
            onPressed: () {},
          ),
          Category(
            title: "IOT",
            numsOfItems: 80,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
