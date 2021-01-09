import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge_spacex/constants.dart';
import 'package:flutter_challenge_spacex/requests.dart';
import 'package:flutter_challenge_spacex/screens/home_page/home_screen.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  runApp(SpaceXApp());
}

class SpaceXApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: GraphQLProvider(
            client: client,
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'SpaceX',
              theme: ThemeData(
                textTheme: Theme.of(context)
                    .textTheme
                    .apply(bodyColor: defaultTextColor),
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              home: MainPage(),
            )
        )
    );
  }
}
