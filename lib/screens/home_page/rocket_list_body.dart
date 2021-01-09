import 'package:flutter/material.dart';
import 'package:flutter_challenge_spacex/constants.dart';
import 'package:flutter_challenge_spacex/products/rocket.dart';
import 'package:flutter_challenge_spacex/screens/details/details_screen.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../requests.dart';
import 'categories.dart';
import 'item_card.dart';

class RocketList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: defaultPadding)),
        Expanded(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: GridView.builder(
                itemCount: rockets.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: defaultPadding,
                  crossAxisSpacing: defaultPadding,
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (160 + defaultPadding),
                ),
                itemBuilder: (context, index) => RocketCard(
                  rocket: rockets[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RocketDetailsScreen(
                          rocket: rockets[index],
                        ),
                      )),
                )),
          ),
        ),
      ],
    );
  }
}

class RocketListPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (rockets.isEmpty) {
      return Query(
          options:
              QueryOptions(documentNode: gql(rocketListQuery), pollInterval: 0),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {
            if (result.data != null) {
              // parse query result into an array of rocket objects
              List<dynamic> arr = result.data["rockets"];
              rockets = List.filled(arr.length, null);
              //print(arr);
              for (int i = 0; i < arr.length; i++) {
                dynamic rocketDto = arr[i];
                rockets[i] = new Rocket(
                    id: i,
                    name: rocketDto["name"],
                    active: rocketDto["active"],
                    wikipedia: rocketDto["wikipedia"],
                    weight: rocketDto["mass"]["kg"],
                    firstFlight: rocketDto["first_flight"],
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Falcon_9_logo.svg/1200px-Falcon_9_logo.svg.png");
              }
            }
            return RocketList();
          });
    }
    return RocketList();
  }
}
