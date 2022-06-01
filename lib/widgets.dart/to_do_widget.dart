import 'package:flutter/material.dart';
import 'package:task_management/utls/app_colors.dart';
import 'package:task_management/utls/dimensions.dart';
import 'package:task_management/widgets.dart/big_text.dart';
import 'package:task_management/widgets.dart/small_text.dart';
import 'package:task_management/widgets.dart/to_do_icon.dart';

class ToDoWidget extends StatelessWidget {
  final int totalTasks, startedTasks;
  final String title;
  final Color iconColor, iconBackgeroundColor;
  final IconData icon;

  const ToDoWidget(
      {this.totalTasks = 0,
      this.startedTasks = 0,
      this.title = "To Do",
      this.iconColor = Colors.white,
      this.iconBackgeroundColor = const Color.fromARGB(137, 168, 78, 78),
      required this.icon,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height10 * 6,
      // color: Colors.amber,
      margin: EdgeInsets.only(
          left: Dimensions.screenWidth * .04, bottom: Dimensions.height15),
      child: Row(children: [
        ToDoIcon(
            icon: icon,
            backGroundColor: iconBackgeroundColor,
            size: Dimensions.height10 * 5),
        SizedBox(width: Dimensions.height10),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(
              text: title,
              size: Dimensions.font20 * 1.15,
              fontWeight: FontWeight.bold,
            ),
            SmallText(
              text: "$totalTasks Tasks now. $startedTasks Started",
              size: Dimensions.font16,
            ),
          ],
        )
      ]),
    );
  }
}
