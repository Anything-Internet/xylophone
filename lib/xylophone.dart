import 'package:flutter/material.dart';
import 'package:xylophone/xylophone_bar.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({
    Key? key,
    required this.title,
    required this.toggleTheme,
  }) : super(key: key);

  final Function toggleTheme;
  final String title;

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: _appBar(),
      body: _body(),
    );
  }

  // _appBar() {
  //   return AppBar(
  //     title: Text(widget.title),
  //     actions: [
  //       IconButton(
  //         onPressed: () {
  //           widget.toggleTheme();
  //         },
  //         icon: const Icon(Icons.brightness_4),
  //       ),
  //     ],
  //   );
  // }

  _body() {

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double barWidth = screenWidth / 7;


    return SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            XylophoneBar(
              note: "A",
              sound: "note1.wav",
              color: Colors.red,
              width: barWidth,
              height: screenHeight,
            ),
            XylophoneBar(
              note: "B",
              sound: "note2.wav",
              color: Colors.yellow,
              width: barWidth,
              height: screenHeight,
            ),
            XylophoneBar(
              note: "C",
              sound: "note3.wav",
              color: Colors.blue,
              width: barWidth,
              height: screenHeight,
            ),
            XylophoneBar(
              note: "D",
              sound: "note4.wav",
              color: Colors.orange,
              width: barWidth,
              height: screenHeight,
            ),
            XylophoneBar(
              note: "E",
              sound: "note5.wav",
              color: Colors.green,
              width: barWidth,
              height: screenHeight,
            ),
            XylophoneBar(
              note: "F",
              sound: "note6.wav",
              color: Colors.purple,
              width: barWidth,
              height: screenHeight,
            ),
            XylophoneBar(
              note: "G",
              sound: "note7.wav",
              color: Colors.cyan,
              width: barWidth,
              height: screenHeight,
            ),
          ],
        ));
  }
}
