import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator Sederhana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Kalkulator Sederhana Bella'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
var number1 = 0, number2 = 0, hasil = 0;
  final TextEditingController t1 = TextEditingController(text: "");
  final TextEditingController t2 = TextEditingController(text: "");

  void plus() {
    setState(() {
      number1 = int.parse(t1.text);
      number2 = int.parse(t2.text);
      hasil = number1 + number2;
    });
  }

  void min() {
    setState(() {
      number1 = int.parse(t1.text);
      number2 = int.parse(t2.text);
      hasil = number1 - number2;
    });
  }

  void kali() {
    setState(() {
      number1 = int.parse(t1.text);
      number2 = int.parse(t2.text);
      hasil = number1 * number2;
    });
  }

  void bagi() {
    setState(() {
      number1 = int.parse(t1.text);
      number2 = int.parse(t2.text);
      hasil = number1 ~/ number2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
       padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hasil Perhitungan : $hasil",
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color : Colors.black
            ),),
            
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration( hintText: "Input Pertama"),
              controller: t1,
            ),

            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration( hintText: "Input Kedua"),
              controller: t2,
            ),

            const Padding(
              padding: EdgeInsets.only(top: 20.0)
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: const Text("+",
                  style: TextStyle(color: Colors.white),),
                  color: Colors.blue,
                  onPressed: plus,
                ),

                MaterialButton(
                  child: const Text("-",
                  style: TextStyle(color: Colors.white),),
                  color: Colors.blue,
                  onPressed: min,
                ),
              ],
            ),
                
            const Padding(
              padding: EdgeInsets.only(top: 20.0)
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: const Text("*",
                  style: TextStyle(color: Colors.white),),
                  color: Colors.blue,
                  onPressed: kali,
                ),

                 MaterialButton(
                  child: const Text("/",
                  style: TextStyle(color: Colors.white),),
                  color: Colors.blue,
                  onPressed: bagi,
               )
              ],
            )
          ],
        )
      )
    );
  }
}
