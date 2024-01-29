import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            'Press the button to change color!'.text.size(20).makeCentered(),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: isPressed ? Colors.red : Colors.green,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20)),
                onPressed: () {
                  setState(() {
                    isPressed = !isPressed;
                  });
                },
                child: Icon(
                  Icons.flag,
                  size: 100,
                  color: isPressed ? Colors.white38 : Colors.black38,
                )),
          ],
        ),
      ),
    );
  }
}
