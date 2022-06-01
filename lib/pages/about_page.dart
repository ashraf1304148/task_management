import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:task_management/pages/home_page.dart';
import 'package:task_management/utls/app_colors.dart';
import 'package:task_management/utls/dimensions.dart';
import 'package:task_management/widgets.dart/active_project_widget.dart';
import 'package:task_management/widgets.dart/big_text.dart';
import 'package:task_management/widgets.dart/header_widget.dart';
import 'package:task_management/widgets.dart/small_text.dart';
import 'package:task_management/widgets.dart/to_do_icon.dart';
import 'package:task_management/widgets.dart/to_do_widget.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  List pages = [AboutPage(), HomePage()];
  // PersistentTabController _controller =
  //     PersistentTabController(initialIndex: 0);
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header container
                Container(
                  width: Dimensions.screenWidth,
                  height: Dimensions.screenHeight * .3,
                  padding: EdgeInsets.fromLTRB(
                    Dimensions.height20,
                    Dimensions.height30,
                    Dimensions.height20,
                    Dimensions.height10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.headerColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(Dimensions.height45),
                      bottomRight: Radius.circular(Dimensions.height45),
                    ),
                  ),
                  child: Column(
                    children: [
                      // HeaderWidget(),
                      // about person info
                      Container(
                        color: AppColors.headerColor,
                        child: Row(
                          children: [
                            // about person Image
                            Container(
                              height: Dimensions.screenHeight * .2,
                              width: Dimensions.screenWidth * .3,
                              margin: EdgeInsets.fromLTRB(Dimensions.height20,
                                  0, Dimensions.height20, 0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/1.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            // about person body
                            Column(
                              children: [
                                BigText(
                                  text: "Sourav Suman",
                                  fontWeight: FontWeight.bold,
                                  size: Dimensions.font26,
                                ),
                                SmallText(
                                  text: "App Developer",
                                  size: Dimensions.font20,
                                  color: Colors.black87,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // my task
                Container(
                    width: Dimensions.screenWidth,
                    height: Dimensions.height10 * 8,
                    // color: Colors.amber,
                    padding: EdgeInsets.fromLTRB(
                        Dimensions.screenWidth * .03,
                        Dimensions.height10,
                        Dimensions.screenWidth * .03,
                        Dimensions.height10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BigText(
                          text: "My Tasks",
                          size: Dimensions.font26,
                          fontWeight: FontWeight.bold,
                        ),
                        ToDoIcon(
                          icon: Icons.calendar_today,
                          size: Dimensions.height10 * 6,
                          backGroundColor: Color(0xff3d9398),
                        ),
                      ],
                    )),
                // To Do's
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ToDoWidget(
                      icon: Icons.alarm,
                      iconBackgeroundColor: Colors.red.shade400,
                      title: "To Do",
                      totalTasks: 5,
                      startedTasks: 1,
                    ),
                    ToDoWidget(
                      icon: Icons.alarm,
                      iconBackgeroundColor: Color.fromARGB(255, 160, 128, 33),
                      title: "In Progress",
                      totalTasks: 1,
                      startedTasks: 1,
                    ),
                    ToDoWidget(
                      icon: Icons.alarm,
                      iconBackgeroundColor: Color.fromARGB(255, 51, 55, 132),
                      title: "Done",
                      totalTasks: 18,
                      startedTasks: 13,
                    ),
                  ],
                ),
                // active projects
                Container(
                  width: Dimensions.screenWidth,
                  height: Dimensions.height10 * 6,
                  // color: Colors.amber,
                  padding: EdgeInsets.fromLTRB(
                      Dimensions.screenWidth * .03,
                      Dimensions.height10,
                      Dimensions.screenWidth * .03,
                      Dimensions.height10),
                  child: BigText(
                    text: "Active projects",
                    size: Dimensions.font26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: Dimensions.screenWidth * .03,
                      right: Dimensions.screenWidth * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ActiveProjectWidget(
                          percent: 30, present: 7, title: "Medical App"),
                      ActiveProjectWidget(
                          percent: 50, present: 7, title: "Medical App"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: Dimensions.height30,
            left: Dimensions.height20,
            height: Dimensions.height45 * 2,
            right: Dimensions.height20,
            child: HeaderWidget(),
          ),
        ],
      ),
      // bottomNavigationBar: ,
    );
  }
}
