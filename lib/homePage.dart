import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int Counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Center(
          child: Text(
            'خاتم التسبيح',
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
              child: Image(
                image: AssetImage('images/assets/sbaha1.png'),

              )),
          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$Counter',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
            alignment: Alignment(-0.5, -0.4),
          ),
          Align(
            child: InkWell(
              onTap: () {
                setState(() {
                  Counter = 0;
                });
              },
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 20,
              ),
            ),
            alignment: Alignment(0.56, 0.13),
          ),
          Align(
            child: InkWell(
              onTap: () {
                setState(() {
                  Counter++;
                });
              },
              child: CircleAvatar(backgroundColor: Colors.transparent, radius: 58),
            ),
            alignment: Alignment(0.008, 0.5),
          ),
        ],
      ),
    );
  }
}
