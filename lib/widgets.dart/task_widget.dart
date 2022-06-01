import 'package:flutter/material.dart';
import 'package:task_management/models/person_model.dart';
import 'package:task_management/utls/dimensions.dart';
import 'package:task_management/widgets.dart/big_text.dart';
import 'package:task_management/widgets.dart/small_text.dart';

class TaskWidget extends StatelessWidget {
  final PersonModel person;
  const TaskWidget({required this.person, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.fromLTRB(0, Dimensions.height10, 0, Dimensions.height10),
      margin: EdgeInsets.only(
        left: (Dimensions.screenWidth - Dimensions.cardWidth) / 2,
        bottom: Dimensions.height15,
      ),
      width: Dimensions.cardWidth,
      height: Dimensions.cardHeight,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.height15)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //image
          Container(
            width: Dimensions.cardImageWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(person.image), fit: BoxFit.cover),
              shape: BoxShape.circle,
              border: Border.all(
                width: Dimensions.height10 * .3,
                color: Colors.white,
                // style: BorderStyle.solid,
              ),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 0),
                    color: Colors.grey.shade600,
                    spreadRadius: 3),
              ],
            ),
            // child: Image.asset("assets/images/1.jpeg"),
          ),
          // body
          Container(
            width: Dimensions.cardBodyWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BigText(
                  text: person.name,
                  size: Dimensions.font26,
                ),
                BigText(
                  text: person.job,
                  size: Dimensions.font20,
                ),
                Row(
                  children: [
                    Icon(Icons.access_time_rounded,
                        size: Dimensions.iconSize24),
                    SizedBox(width: Dimensions.height10 * .8),
                    SmallText(
                      text: person.clock,
                      size: Dimensions.font16,
                    )
                  ],
                ),
              ],
            ),
          ),
          // button
          Container(
            // color: Colors.red,
            width: Dimensions.cardIconWidth,
            child: Center(
              child: Icon(
                Icons.format_list_bulleted_outlined,
                size: Dimensions.height10 * 3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
