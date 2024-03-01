import 'package:feb_28/colors.dart';
import 'package:feb_28/task1_3.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Task12 extends StatelessWidget {
  List<Color> myColors = [
    const Color(0xFF03045e),
    const Color(0xFF0077b6),
    const Color(0xFF90e0ef),
    const Color(0xFF003049),
    const Color(0xFFc1121f),
    const Color(0xFF2a9d8f),
    const Color(0xFF2b2d42)
  ];

  Task12({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task of 28-02-24"),
      ),
      body: Stack(
        children: [
          Wrap(
              verticalDirection: VerticalDirection.up,
              direction: Axis.vertical,
              children: List.generate(
                  7,
                  (index) => Container(
                        height: screenHeight / 5,
                        width: screenWidth / 3,
                        color: myColors[index],
                        child: Center(
                            child: Text(
                          index.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 25),
                        )),
                      ))),
          Container(
            margin: const EdgeInsets.only(top: 10,right: 20),
            alignment: Alignment.topRight,
            child: FloatingActionButton(
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Task13(),
                  ));
              },
              backgroundColor: AppColors.lightblue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              child: const Icon(Icons.navigate_next_rounded),
            ),
          )
        ],
      ),
    );
  }
}
