import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planned_app/Cubits/Counter%20Cubit/counter_cubit.dart';
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
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  print("ui updated");
                  if (state is CounterInitialState) {
                    return counterDisplay(context);
                  } else {
                    return counterDisplay(context);
                  }
                },
              ),
              buttonRow(context),
            ],
          )),
    );
  }

  Widget counterDisplay(BuildContext context) {
    return Column(
      children: [
        Text(
          "Counter",
          style: TextStyle(
              color: textColor, fontSize: 21, fontWeight: FontWeight.w100),
        ),
        Text(
          context.read<CounterCubit>().counter.toString(),
          style: TextStyle(
              color: themeColor, fontSize: 120, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget buttonRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            backgroundColor: themeColor,
            onPressed: () {
              context.read<CounterCubit>().decrementCounter();
            },
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
              onPressed: () {
                context.read<CounterCubit>().resetCounter();
              },
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
            onPressed: () {
              context.read<CounterCubit>().incrementCounter();
            },
            child: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
