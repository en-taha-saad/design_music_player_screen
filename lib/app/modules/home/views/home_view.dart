//@dart=2.9
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  final ValueChanged<String> action;
  final String tag;
  final bool active;
  HomeView({
    this.action,
    this.active,
    this.tag,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String _active;

  void active(String btn) {
    print('123');
    setState(() => _active = btn);
    print('_active = $_active');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff01012A),
      body: GetBuilder<HomeController>(
        builder: (c) {
          return Row(
            children: <Widget>[
              NavigationRail(
                elevation: 20,
                selectedIndex: c.selectedIndex,
                onDestinationSelected: c.onDestinationSelected,
                selectedLabelTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.8,
                ),
                unselectedLabelTextStyle: TextStyle(
                  fontSize: 13,
                  letterSpacing: 0.8,
                  color: Colors.white.withOpacity(0.3),
                ),
                minWidth: 60.0,
                groupAlignment: -1.0,
                backgroundColor: Color(0xff080833),
                labelType: NavigationRailLabelType.all,
                leading: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Center(
                      child: Image.asset(
                        'assets/icon1.png',
                        height: 30,
                        width: 30,
                        color: Color(0xffFF296D),
                      ),
                    ),
                    SizedBox(height: 180),
                  ],
                ),
                destinations: [
                  NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Text('All Stations'),
                          ),
                        ),
                        c.selectedIndex == 0
                            ? Icon(
                                Icons.circle,
                                size: 15,
                                color: Color(0xff05D8E8),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                  NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Text('Favorites'),
                          ),
                        ),
                        c.selectedIndex == 1
                            ? Icon(
                                Icons.circle,
                                size: 15,
                                color: Color(0xff05D8E8),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                  NavigationRailDestination(
                    icon: SizedBox.shrink(),
                    label: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: RotatedBox(
                            quarterTurns: -1,
                            child: Text('Popular'),
                          ),
                        ),
                        c.selectedIndex == 2
                            ? Icon(
                                Icons.circle,
                                size: 15,
                                color: Color(0xff05D8E8),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ],
              ),
              if (c.selectedIndex == 2)
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(1),
                    child: Column(
                      children: [
                        // SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text.rich(
                              TextSpan(
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: 'Hello',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Miau',
                                    style: TextStyle(
                                      color: Color(0xffFF296D),
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Image.asset('assets/avatar.png'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              c.showedText,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.all(15),
                          shrinkWrap: true,
                          itemCount: 6,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return CardWidget(
                              tag: c.tags[index],
                              active: _active == c.tags[index] ? true : false,
                              action: active,
                              text2: c.nums[index],
                              text3: c.texts2[index],
                              image: c.images[index],
                            );
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset('assets/play_container.png'),
                                Align(
                                  child: InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                        'assets/left_play_icon.png'),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: Alignment(0.05, 0.0),
                              children: [
                                Image.asset('assets/main_button.png'),
                                Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    onTap: () {},
                                    child: Image.asset('assets/play_icon.png'),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset('assets/play_container.png'),
                                InkWell(
                                  onTap: () {},
                                  child:
                                      Image.asset('assets/right_play_icon.png'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/volume.png'),
                            Container(
                              width: 250,
                              child: Slider(
                                value: c.currentVol / 1.0,
                                divisions: c.maxVol,
                                max: (c.maxVol) / 1.0,
                                min: 0,
                                thumbColor: Color(0xff05D8E8),
                                activeColor: Color(0xff05D8E8),
                                inactiveColor: Color(0xff262640),
                                label: '${c.currentVol}',
                                onChanged: c.onChanged,
                              ),
                            ),
                            Text(
                              '${c.currentVol}%',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              if (c.selectedIndex == 1) Container(),
              if (c.selectedIndex == 0) Container(),
            ],
          );
        },
      ),
    );
  }
}

class CardWidget extends StatefulWidget {
  final ValueChanged<String> action;
  final bool active;
  final String text2;
  final String text3;
  final String image;
  final String tag;

  CardWidget({
    this.action,
    this.tag,
    this.text2,
    this.text3,
    this.image,
    this.active,
  });

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  void handleTap() {
    setState(() {
      widget.action(widget.tag);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: handleTap,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xff32324E),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 10,
        color: widget.active ? Color(0xffFF296D) : Color(0xff01012A),
        margin: EdgeInsets.all(7),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                right: 15,
                left: 15,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.active ? 'Playing' : '',
                    style: TextStyle(
                      color: Colors.grey.shade900,
                      fontSize: 12,
                    ),
                  ),
                  Image.asset(
                    widget.active
                        ? 'assets/filled_heart.png'
                        : 'assets/outlined_heart.png',
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Text(
              widget.text2,
              style: TextStyle(
                fontSize: 25,
                color: widget.active
                    ? Colors.white
                    : Colors.white.withOpacity(0.2),
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              widget.text3,
              style: TextStyle(
                color: widget.active
                    ? Colors.white
                    : Colors.white.withOpacity(0.2),
                fontSize: 12,
              ),
            ),
            Image.asset(widget.image),
          ],
        ),
      ),
    );
  }
}
