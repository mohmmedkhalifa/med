import 'package:flutter/material.dart';

class DaysWidget extends StatefulWidget {
  @override
  _DaysWidgetState createState() => _DaysWidgetState();
}

class _DaysWidgetState extends State<DaysWidget> {
  int currentIndex;

  List<String> days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Container(
            child: Center(child: Text(days[index])),
            decoration: BoxDecoration(
                border: Border.all(width: 2),
                color:
                    currentIndex == index ? Colors.grey : Colors.transparent),
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(8),
          ),
        ),
        itemCount: days.length,
        scrollDirection: Axis.horizontal,
      ),
      width: 220,
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 16),
    );
  }
}
