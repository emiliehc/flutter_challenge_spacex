import 'package:flutter/material.dart';
import 'package:flutter_challenge_spacex/products/rocket.dart';

import '../../constants.dart';

class RocketCard extends StatelessWidget {
  final Rocket rocket;
  final Function press;
  const RocketCard({
    Key key,
    this.rocket,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.all(defaultPadding),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 160,
              decoration: BoxDecoration(
                color: Color(0xFFF0F0F0),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    child: Hero(
                      tag: "${rocket.id}",
                      child: Image.network(
                        rocket.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 150,
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
                          child: Column(
                            children: [
                              Container(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "ROCKET",
                                    style: TextStyle(
                                      color: redColor
                                    ),
                                  )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      rocket.name,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: defaultTextColor
                                      ),
                                    )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 12),
                                child: Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      width: 90,
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Center(
                                          child: Text(
                                              rocket.active ? "Active" : "Inactive",
                                              style: TextStyle(
                                                  color: Colors.white
                                              ),
                                          ),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: rocket.active ? Colors.green : Colors.red,
                                        borderRadius: BorderRadius.circular(12)
                                      ),
                                    )
                                  )
                                )
                              )
                            ],
                          ),
                        )
                      )
                    )
                  )
                ],
              )
            )
          ),
        ],
      ),
    );
  }
}
