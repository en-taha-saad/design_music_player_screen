import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      // home: SamplePage(),
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    ),
  );
}

// void main() {
//   runApp(HomePage());
// }

/*

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _active;
  int iter = 0;
  String activeButton;
  List<String> selectBarData = ['dasdasdas'];
  List<String> modes = ['deep-sleep', 'pain-relief'];
  List<String> sounds = ['campfire', 'rain'];

  // ValueChanged<String> callback
  void active(String btn) {
    setState(() => _active = btn);
  }

  List tags = [
    "button1",
    "button2",
    "button3",
    "button4",
    "button5",
    "button6",
    "button7",
    "button8",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CircleButton(
                  action: active,
                  //pass data from child to parent
                  imageData: '',
                  tag: tags[index],
                  //specifies attribute of button
                  active: _active == tags[index] ? true : false,
                  //set button active based on value in this parent
                  // imageData: 'assets/body-organ.png',
                  buttonName: tags[index],
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
            ),
            // selectBar(),
          ],
        ),
      )),
    );
  }
}

class CircleButton extends StatefulWidget {
  final ValueChanged<String> action; //callback value change
  final String tag; //tag of button
  final String imageData;
  final String buttonName;
  final bool active; // state of button
  CircleButton({
    this.action,
    this.imageData,
    this.buttonName,
    this.active,
    this.tag,
  });

  @override
  _CircleButtonState createState() => _CircleButtonState();
}

class _CircleButtonState extends State<CircleButton> {
  void handleTap() {
    setState(() {
      widget.action(widget.tag);
    });
  }

  @override
  Widget build(BuildContext context) {
    double circleBoxSize = 50.0;

    ///
    return Column(
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
        FlatButton(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: handleTap,
          child: Container(
            width: circleBoxSize,
            height: circleBoxSize,
            decoration: BoxDecoration(
                gradient: widget.active
                    ? LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                            Color.fromRGBO(79, 172, 254, 1),
                            Color.fromRGBO(0, 242, 245, 1)
                          ])
                    : null,
                shape: BoxShape.circle,
                color: widget.active ? null : Color.fromRGBO(227, 230, 238, 1)),
            child: Image.asset(
              this.widget.imageData,
              color: widget.active ? Color.fromRGBO(255, 255, 255, 1) : null,
              scale: 1.8,
            ),
          ),
        ),
      ],
    );
  }
}

*/
