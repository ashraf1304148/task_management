import 'package:flutter/material.dart';
import 'package:task_management/models/person_model.dart';
import 'package:task_management/widgets.dart/task_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    PersonModel person = PersonModel(
        name: "Ashraf Abdulsalam",
        job: "Flutter Developer",
        image: "assets/images/1.jpeg",
        clock: "3:40");
    return Scaffold(
      appBar: AppBar(title: Text("Feed"), actions: [
        Icon(
          Icons.home,
          size: 30,
        )
      ]),
      body: Container(
          color: Colors.grey.shade300,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => TaskWidget(person: person),
          )),
    );
  }
}
