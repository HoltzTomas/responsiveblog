import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Socal extends StatelessWidget {
  const Socal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/behance-alt.svg'),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 2),
          child:
              SvgPicture.asset('assets/icons/feather_dribbble.svg'),
        ),
        SvgPicture.asset('assets/icons/feather_twitter.svg'),
        SizedBox(
          width: kDefaultPadding,
        ),
        ElevatedButton(
            onPressed: () {},
            child: Text("Let's Talk"),
            style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 1.5,
                    vertical: kDefaultPadding)))
      ],
    );
  }
}
