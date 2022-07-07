import 'package:flutter/material.dart';
import 'package:imc_calculator/presentation/ImcCalculator/viewModel/imc_calculator_viewmodel.dart';
import 'package:imc_calculator/presentation/ImcList/viewModel/imc_list_viewmodel.dart';
import 'package:provider/provider.dart';
import 'presentation/ImcCalculator/view/imc_calculator_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ImcCalculatorViewModel(),
      ),
      ChangeNotifierProvider(
        create: (context) => ImcListViewModel(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: const Color.fromARGB(255, 11, 181, 138),
          secondaryHeaderColor: const Color.fromARGB(255, 170, 170, 170),
          backgroundColor: Colors.white),
      home: const ImcCalculatorScreen(),
    );
  }
}
