import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_challenge_spacex/constants.dart';
import 'package:flutter_challenge_spacex/screens/home_page/rocket_list_body.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: buildAppBar(context),
        body: Container(
          child: Container(
              child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              toolbarHeight: 50,
              bottom: TabBar(
                indicatorColor: redColor,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 3,
                tabs: [
                  Tab(
                    child: Text(
                      "Upcoming",
                      style: TextStyle(color: redColor, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Launches",
                      style: TextStyle(color: redColor, fontSize: 16),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Rockets",
                      style: TextStyle(color: redColor, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                RocketListPageBody(),
                RocketListPageBody(),
                RocketListPageBody()
              ],
            ),
          )),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(27),
              topRight: Radius.circular(27),
            ),
          ),
        ));
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      toolbarHeight: 80,
      title: Text('SpaceX'),
    );
  }
}
