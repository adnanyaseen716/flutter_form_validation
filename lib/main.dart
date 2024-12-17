import 'package:flutter/material.dart';
import 'package:flutter_text_input/card_colum.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  static GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      flex: 100,
      child: Form(
        key: MyHomePage.globalKey,
        child: Container(
          color: Colors.grey.withOpacity(0.1),
          child: const MainColum(),
        ),
      ),
    ));
  }
}
