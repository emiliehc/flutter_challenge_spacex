import 'package:flutter/material.dart';
import 'package:flutter_challenge_spacex/products/rocket.dart';

import '../../constants.dart';

class RocketLogo extends StatelessWidget {
  const RocketLogo({
    Key key,
    @required this.rocket,
  }) : super(key: key);

  final Rocket rocket;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: defaultPadding),
          SizedBox(width: defaultPadding),
          Center(child: Container(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Hero(
              tag: "${rocket.id}",
              child: Image.network(
                rocket.image,
                fit: BoxFit.fill,
              ),
            ),
          )
          )
        ],
      ),
    );
  }
}
