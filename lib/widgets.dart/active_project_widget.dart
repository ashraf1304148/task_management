import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task_management/utls/dimensions.dart';
import 'package:task_management/widgets.dart/big_text.dart';
import 'package:task_management/widgets.dart/small_text.dart';

class ActiveProjectWidget extends StatelessWidget {
  final int present;
  final double percent;
  final String title;
  final Color backgroundColor;
  const ActiveProjectWidget(
      {required this.percent,
      required this.present,
      required this.title,
      this.backgroundColor = Colors.amber,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.screenWidth * .455,
      height: Dimensions.screenWidth * .49 * 1.35,
      padding: EdgeInsets.all(Dimensions.height20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(Dimensions.height45),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // present p
          /* Container(
            height: Dimensions.height10 * 10,
            width: Dimensions.height10 * 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: Dimensions.height10 * .6, color: Colors.white),
            ),
            child: Center(
              child: BigText(
                  text: "$persent %",
                  size: Dimensions.font20,
                  color: Colors.white),
            ),

          ),*/
          CircularPercentIndicator(
            radius: Dimensions.height10 * 5,
            percent: percent * .01,
            progressColor: Colors.red.shade400,
            backgroundColor: Color.fromARGB(255, 160, 128, 33),
            lineWidth: Dimensions.height10,

            center: BigText(
              text: percent.toInt().toString() + " %",
              color: Colors.white,
              size: Dimensions.font20 * 1.2,
            ),
            // Colors.red.shade400, Color.fromARGB(255, 160, 128, 33),
          ),
          // detail
          Container(
            // height: Dimensions.height10 * 7,
            // decoration: BoxDecoration(
            //   // shape: BoxShape.circle,
            //   border: Border.all(
            //       width: Dimensions.height10 * .3, color: Colors.white),
            // ),
            child: Column(
              children: [
                BigText(
                    text: title, size: Dimensions.font20, color: Colors.white),
                SmallText(
                  text: "$present Hours Progress",
                  size: Dimensions.font20 * .7,
                  color: Color.fromARGB(255, 38, 114, 177),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
