import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: must_be_immutable
class CustomElevatedButton extends StatelessWidget {
  String text;
  double horizontalPadding;
  double verticalPadding;
  double circularRadius;
  Color backgroundColor;
  double fontSize;

  CustomElevatedButton(
      {super.key,
      required this.backgroundColor,
      required this.circularRadius,
      required this.fontSize,
      required this.horizontalPadding,
      required this.text,
      required this.verticalPadding});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding, vertical: verticalPadding),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(circularRadius)),
          backgroundColor: backgroundColor,
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(
              letterSpacing: 1,
              fontWeight: FontWeight.w600,
              fontSize: fontSize,
              color: Colors.black87),
        ));
  }
}


//-----------------------------------------------------------------

// ignore: must_be_immutable
class CustomWrapWidget extends StatefulWidget {
  List optionsList;
  int listIndex;
  String text;

  CustomWrapWidget(
      {super.key,
      required this.optionsList,
      required this.listIndex,
      required this.text});

  @override
  State<CustomWrapWidget> createState() => _CustomWrapWidgetState();
}

class _CustomWrapWidgetState extends State<CustomWrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
          child: Text(
            widget.text,
            style: GoogleFonts.poppins(
                letterSpacing: 0.5, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
       
        Wrap(
            children: List.generate(
          widget.optionsList.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                widget.listIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: widget.listIndex == index
                      ? Colors.amber
                      : Colors.amber.shade100),
              child: Text(
                widget.optionsList[index],
                style: GoogleFonts.poppins(fontSize: 15),
              ),
            ),
          ),
        )),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
