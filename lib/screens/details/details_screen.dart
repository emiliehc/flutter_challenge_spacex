import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_challenge_spacex/constants.dart';
import 'package:flutter_challenge_spacex/products/rocket.dart';
import 'package:flutter_challenge_spacex/screens/details/page_body.dart';

class RocketDetailsScreen extends StatelessWidget {
  final Rocket rocket;

  const RocketDetailsScreen({Key key, this.rocket}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: RocketDetailBody(rocket: rocket),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        SizedBox(width: defaultPadding / 2)
      ],
    );
  }
}
