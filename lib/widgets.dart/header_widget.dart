import 'package:flutter/material.dart';
import 'package:task_management/utls/app_colors.dart';
import 'package:task_management/utls/dimensions.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu, size: Dimensions.height30),
        Icon(Icons.search, size: Dimensions.height30),

      ],
    );
  }
}
