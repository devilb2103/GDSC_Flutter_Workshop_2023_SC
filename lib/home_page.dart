import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planned_app/Cubits/Counter%20Cubit/counter_cubit.dart';
import 'package:planned_app/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // scaffold widget for material ui themed widget support
    return Scaffold(
      // container widget for background color
      body: Container(
          // background color in constants.dart file (or ctrl + left-click the variable)
          color: backgroundColor,
          // max width
          width: double.maxFinite,
          // column widget to stack widgets vertically
          child: Column(
            // give equal space around all widgets
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // center align the widgets vertically
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // listens to state changes (states declared in counter_state.dart)
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  print("ui updated");
                  // repaint counter widget whenever there is change in state
                  if (state is CounterInitialState) {
                    return counterDisplay(context);
                  } else {
                    return counterDisplay(context);
                  }
                },
              ),
              // widget that contains buttons
              buttonRow(context),
            ],
          )),
    );
  }

  // widget that contains two text widgets representing counter values
  Widget counterDisplay(BuildContext context) {
    return Column(
      children: [
        Text(
          "Counter",
          style: TextStyle(
              color: textColor, fontSize: 21, fontWeight: FontWeight.w100),
        ),
        Text(
          // display counter variable's value from the counter_cubit.dart file
          context.read<CounterCubit>().counter.toString(),
          style: TextStyle(
              color: themeColor, fontSize: 120, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  // widget that contains three floatingActionButton widgets that modify counter
  Widget buttonRow(BuildContext context) {
    // row widget stack widgets beside each other horizontally
    return Row(
      // centre widgets horizontally
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // sizedbox so that the button expands to fit the space 60x60
        SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            backgroundColor: themeColor,
            onPressed: () {
              // call the decrement function from counter_cubit.dart
              context.read<CounterCubit>().decrementCounter();
            },
            // buttons contains "-" icon
            child: const Icon(Icons.remove),
          ),
        ),
        // sizedbox for spaceing between buttons
        const SizedBox(
          width: 21,
        ),
        // sizedbox so that the button expands to fit the space 60x120
        SizedBox(
          height: 60,
          width: 120,
          child: FloatingActionButton.extended(
              backgroundColor: themeColor,
              onPressed: () {
                // call the reset function from counter_cubit.dart
                context.read<CounterCubit>().resetCounter();
              },
              label: const Text("Reset")),
        ),
        // sizedbox for spaceing between buttons
        const SizedBox(
          width: 21,
        ),
        // sizedbox so that the button expands to fit the space 60x60
        SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            backgroundColor: themeColor,
            onPressed: () {
              // call the increment function from counter_cubit.dart
              context.read<CounterCubit>().incrementCounter();
            },
            // buttons contains "+" icon
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
