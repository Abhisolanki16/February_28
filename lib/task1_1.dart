import 'package:feb_28/colors.dart';
import 'package:feb_28/task1_2.dart';
import 'package:flutter/material.dart';

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task of 28-02-24"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Wrap(
              alignment: WrapAlignment.spaceAround,
              runSpacing: 20,
              spacing: 20,
              children: List.generate(
                  7,
                  (index) => Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 80,
                        color: AppColors.red,
                        child: Text(
                          index.toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ))),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.red, foregroundColor: Colors.white),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Task12(),
                  ));
            },
            child: const Text("Task 2"),
          )
        ],
      ),
    );
  }
}
