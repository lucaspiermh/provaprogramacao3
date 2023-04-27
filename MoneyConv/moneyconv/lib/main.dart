import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoneyConv',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'MoneyConv'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller_1 = TextEditingController();
  TextEditingController controller_2 = TextEditingController();

  double dolar = 5.60;
  double euro = 5.05;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('MoneyConv'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            TextField(
              controller: controller_1,
              decoration: InputDecoration(
                hintText: "Valor em Reais"
              ),
              onChanged: (String value) {
                setState((){});
              },
            ),  

            Text("\nTotal em Dolar"),
            Text(
              (
                (double.tryParse(controller_1.text)??0) / dolar
              ).toString()),

            Text("\nTotal em Euro"),
            Text(
              (
                (double.tryParse(controller_1.text)??0) / euro
              ).toString()),          

          ],
        )
      ),
    );
  }
}


