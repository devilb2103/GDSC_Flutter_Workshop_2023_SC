import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:planned_app/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: backgroundColor,
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              counterDisplay(),
              buttonRow(),
            ],
          )),
    );
  }

  Widget counterDisplay() {
    return Column(
      children: [
        Text(
          "Counter",
          style: TextStyle(
              color: textColor, fontSize: 21, fontWeight: FontWeight.w100),
        ),
        Text(
          "10",
          style: TextStyle(
              color: themeColor, fontSize: 120, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget buttonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            backgroundColor: themeColor,
            onPressed: () {},
            child: Icon(Icons.remove),
          ),
        ),
        SizedBox(
          width: 21,
        ),
        SizedBox(
          height: 60,
          width: 120,
          child: FloatingActionButton.extended(
              backgroundColor: themeColor,
              onPressed: () {},
              label: Container(child: Text("Reset"))),
        ),
        SizedBox(
          width: 21,
        ),
        SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            backgroundColor: themeColor,
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
