import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: "AI Pool 🌊"),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Align(
          alignment: Alignment.centerLeft,
        ),
        backgroundColor: const Color.fromRGBO(100, 100, 200, 0.2),
        title: GestureDetector(
          child: Text(widget.title),
          onTap: () => Navigator.pop(context), //Go back home on Tap
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          width: double.infinity,
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02),
                child: const Text.rich(
                  TextSpan(
                    text:
                        " Enter the new Internet,\n and optimize your life \n with the tools below",
                    style: TextStyle(
                      color: Color.fromRGBO(240, 238, 237, 1),
                      letterSpacing: 8,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Row(
                children: const <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Card(
                        child: Text("hello World"),
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Card(
                        child: Text("hello World"),
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Card(
                        child: Text("hello World"),
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Card(
                        child: Text("hello World"),
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
