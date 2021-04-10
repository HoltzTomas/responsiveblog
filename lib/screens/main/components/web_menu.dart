import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/controllers/MenuControllers.dart';
import '../../../constants.dart';

class WebMenu extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
        children: List.generate(
            _controller.menuItems.length,
            (index) => WebMenuItem(
                isActive: index == _controller.selectedIndex,
                text: _controller.menuItems[index],
                onPressed: () => _controller.setMenuIndex(index)))));
  }
}

class WebMenuItem extends StatefulWidget {
  const WebMenuItem(
      {Key key,
      @required this.isActive,
      @required this.text,
      @required this.onPressed})
      : super(key: key);

  final bool isActive;
  final String text;
  final VoidCallback onPressed;

  @override
  _WebMenuItemState createState() => _WebMenuItemState();
}

class _WebMenuItemState extends State<WebMenuItem> {
  @override
  Widget build(BuildContext context) {
    bool _isHover = false;

    Color _borderColor() {
      if (widget.isActive) {
        return kPrimaryColor;
      } else if (!widget.isActive & _isHover) {
        return kPrimaryColor.withOpacity(0.4);
      }
      return Colors.transparent;
    }

    return InkWell(
      onTap: widget.onPressed,
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: kDefaultDuration,
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: _borderColor(),
                    width: 3))),
        child: Text(widget.text,
            style: TextStyle(
                color: Colors.white,
                fontWeight:
                    widget.isActive ? FontWeight.w600 : FontWeight.normal)),
      ),
    );
  }
}
