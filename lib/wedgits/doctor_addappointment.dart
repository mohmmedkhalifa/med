import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Doctorapoointemt extends StatefulWidget {
  @override
  _DoctorapoointemtState createState() => _DoctorapoointemtState();
}

class _DoctorapoointemtState extends State<Doctorapoointemt> {
  List<String> dates = [];

  List<String> times = [];

  String date = '';

  String time = '';

  int currentIndex;
  List<String> selectedDays = [];
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
      height: 450,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            blurRadius: 9,
            spreadRadius: 5,
            offset: Offset(0, 0.9),
          )
        ],
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 16,
          ),
          RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                'Add Work Days ',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Add'),
                      elevation: 4,
                      actions: [
                        GestureDetector(
                          onTap: () {
                            dates.add(date);
                            times.add(time);
                            setState(() {});
                            print(dates);
                            print(times);
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Add',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                      content: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: DateTimePicker(
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2030),
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.calendar_today),
                                  labelText: 'Select Date',

                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.circular(24))),
                              initialValue: '',
                              type: DateTimePickerType.date,
                              onChanged: (value) {
                                date = value;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: DateTimePicker(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.watch_later_outlined),
                                  labelText: 'Select Time',
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                      borderRadius: BorderRadius.circular(24))),
                              initialValue: '',
                              type: DateTimePickerType.time,
                              onChanged: (value) {
                                time = value;
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }),
          Container(

            width: double.infinity,
            height: 350,
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) => ListTile(
                title: Text(times[index]),
                subtitle: Text(dates[index]),
              ),
              itemCount: dates.length,
            ),
          )
        ],
      ),
    );
  }
}
