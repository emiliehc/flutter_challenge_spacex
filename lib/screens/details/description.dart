import 'package:flutter/material.dart';
import 'package:flutter_challenge_spacex/products/rocket.dart';
import 'package:flutter_challenge_spacex/screens/details/link_button.dart';

import '../../constants.dart';

class PropertyItem extends StatelessWidget {
  final String title;
  final String content;

  const PropertyItem({
    @required this.title,
    @required this.content,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
              title.toUpperCase(),
              style: TextStyle(
                color: Colors.red,
                fontSize: 12
              )
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 8.0)),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            content,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: defaultDescriptionPadding))
      ],
    );
  }
}

class RocketDescription extends StatelessWidget {
  const RocketDescription({
    Key key,
    @required this.rocket,
  }) : super(key: key);

  final Rocket rocket;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding, horizontal: defaultPadding),
      child: Container(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  PropertyItem(title: "Rocket", content: rocket.name),
                  PropertyItem(title: "First Flight", content: rocket.firstFlight),
                  PropertyItem(title: "Mass", content: "${rocket.weight} kg"),
                  PropertyItem(title: "Active", content: rocket.active ? "Yes" : "No"),
                  LinkButton(url: rocket.wikipedia, text: "Wikipedia", color: Colors.blue,)
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
