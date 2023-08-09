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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Data",
                style: TextStyle(
                    color: textColor,
                    fontSize: 21,
                    fontWeight: FontWeight.w200),
              ),
              Text(
                "10",
                style: TextStyle(
                    color: themeColor,
                    fontSize: 72,
                    fontWeight: FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    backgroundColor: themeColor,
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                  SizedBox(
                    width: 21,
                  ),
                  FloatingActionButton.extended(
                      backgroundColor: themeColor,
                      onPressed: () {},
                      label: Text("Reset")),
                  SizedBox(
                    width: 21,
                  ),
                  FloatingActionButton(
                    backgroundColor: themeColor,
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
