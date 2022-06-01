import 'package:flutter/material.dart';
import 'package:task_management/utls/dimensions.dart';

class ToDoIcon extends StatelessWidget {
  double size;
  final IconData icon;
  final Color iconColor, backGroundColor;
  ToDoIcon(
      {Key? key,
      this.size = 0,
      required this.icon,
      this.iconColor = Colors.white,
      this.backGroundColor = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    size = (size == 0) ? Dimensions.height45 : size;
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(shape: BoxShape.circle, color: backGroundColor),
      child: Icon(
        icon,
        size: size / 2,
        color: iconColor,
      ),
    );
  }
}
