import 'package:feb_28/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  List<String> pickupOptions = [
    'Store Pickup',
    'Curbside',
    'Beach  Delivery',
    'Home Delivery',
    'Table Delivery',
    'Office Delivery'
  ];

  List<String> amenities = ['WiFi', 'Online Ordering', 'Parking'];

  List<String> storeHours = ['24 Hour Service', 'Open Now'];

  int hoursIndex = 0, pickupIndex = 0, amenitiesIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.redAccent.shade700),
                borderRadius: BorderRadius.circular(20)),
            child: const Icon(Icons.chevron_left_rounded),
          ),
        ),
        title: Text("Filter",
            style: GoogleFonts.poppins(
                letterSpacing: 0.5,
                color: Colors.redAccent.shade700,
                fontWeight: FontWeight.bold)),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomWrapWidget(
                text: "Store Hours",
                optionsList: storeHours,
                listIndex: hoursIndex),
            CustomWrapWidget(
                text: "Pickup Options",
                optionsList: pickupOptions,
                listIndex: pickupIndex),
            CustomWrapWidget(
                text: "Amenities",
                optionsList: amenities,
                listIndex: amenitiesIndex),
                const SizedBox(height: 40,),
            Center(
              child: CustomElevatedButton(
                backgroundColor: Colors.amber,
                circularRadius: 10,
                fontSize: 15,
                horizontalPadding: 80,
                text: "Confirm",
                verticalPadding: 7,
              ),
            )
          ],
        ),
      ),
    );
  }
}



