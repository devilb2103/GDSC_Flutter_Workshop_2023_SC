import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planned_app/Cubits/Counter%20Cubit/counter_cubit.dart';
import 'package:planned_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove the debug banner
      debugShowCheckedModeBanner: false,

      // wrap the homepage with the blockprovider widget supporting countercubit so that
      // all widgets under homepage can listen to state changes caused by that cubit
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: const HomePage(),
      ),
    );
  }
}
