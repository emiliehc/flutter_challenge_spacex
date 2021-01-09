import 'package:flutter/material.dart';
import 'package:flutter_challenge_spacex/constants.dart';
import 'package:flutter_challenge_spacex/products/rocket.dart';

import 'color_and_size.dart';
import 'favorite_button.dart';
import 'description.dart';
import 'product_summary.dart';

class RocketDetailBody extends StatelessWidget {
  final Rocket rocket;

  const RocketDetailBody({Key key, this.rocket}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.17),
                  padding: EdgeInsets.only(
                    left: defaultPadding,
                    right: defaultPadding,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: RocketDescription(rocket: rocket),
                ),
                RocketLogo(rocket: rocket)
              ],
            ),
          )
        ],
      ),
    );
  }
}
