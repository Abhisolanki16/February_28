import 'package:feb_28/task2.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class Task13 extends StatelessWidget {
  const Task13({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Widget"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: screenHeight / 4,
            width: screenWidth / 2,
            color: AppColors.lightblue,
            child: const Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa \nbbbbbbbbbbb \t ccccccc")
          ),
           ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.yellow, foregroundColor: Colors.white),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  const Task2(),
                  ));
            },
            child: const Text("Task 2"),
          )
        ],
      ),
    );
  }
}
