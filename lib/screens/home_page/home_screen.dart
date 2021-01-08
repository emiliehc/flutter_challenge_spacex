import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_challenge_spacex/constants.dart';
import 'package:flutter_challenge_spacex/screens/home_page/rocket_list_body.dart';

class RocketListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: buildAppBar(context),
      body: Container(
        child: RocketListPageBody(),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(27),
            topRight: Radius.circular(27),
          ),
        ),
      )
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Text('SpaceX'),
    );
  }
}
