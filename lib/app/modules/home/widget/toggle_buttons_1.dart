import 'package:flutter/material.dart';

class ToggleButtons1 extends StatefulWidget {
  @override
  _ToggleButtons1State createState() => _ToggleButtons1State();
}

class _ToggleButtons1State extends State<ToggleButtons1> {
  List<bool> isSelected = [true, false, false, false, false, false];

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.green.withOpacity(0.5),
        child: ToggleButtons(
          isSelected: isSelected,
          direction: Axis.vertical,
          selectedColor: Colors.white,
          color: Colors.black,
          fillColor: Colors.lightBlue.shade900,
          renderBorder: false,
          highlightColor: Colors.orange,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xff32324E),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              color: Color(0xff01012A),
              margin: EdgeInsets.all(7),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Playing',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      // Icon(Icons.),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xff32324E),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              color: Color(0xff01012A),
              margin: EdgeInsets.all(7),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Playing',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      // Icon(Icons.),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xff32324E),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              color: Color(0xff01012A),
              margin: EdgeInsets.all(7),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Playing',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      // Icon(Icons.),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xff32324E),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              color: Color(0xff01012A),
              margin: EdgeInsets.all(7),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Playing',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      // Icon(Icons.),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xff32324E),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              color: Color(0xff01012A),
              margin: EdgeInsets.all(7),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Playing',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      // Icon(Icons.),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xff32324E),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              color: Color(0xff01012A),
              margin: EdgeInsets.all(7),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Playing',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      // Icon(Icons.),
                    ],
                  ),
                ],
              ),
            ),
          ],
          onPressed: (int newIndex) {
            setState(() {
              for (int index = 0; index < isSelected.length; index++) {
                if (index == newIndex) {
                  isSelected[index] = true;
                } else {
                  isSelected[index] = false;
                }
              }
            });
          },
        ),
      );
}
