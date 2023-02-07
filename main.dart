import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ui',
      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key : key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Image.asset('assets/images/logo.png'),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 80),
          child: SizedBox(
            height: 20,
            child: Text("Sign in with", style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 0, width: 5),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Image.asset('assets/images/google.png', width: 40, height: 40),

                        const Text("Google", style: TextStyle(fontSize: 15),),
                    ]
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 1, 20, 1),
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),

                  child: SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Image.asset('assets/images/facebook.png', width: 40, height: 40),

                        const Text("Facebook", style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                  ),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/linkedin.png', width: 30, height: 30),
                        const Text("LinkedIn", style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                ),
              )
        ]),
      ),
      backgroundColor: Colors.black,
      );
  }
}
