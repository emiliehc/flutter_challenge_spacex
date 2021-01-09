import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final ValueNotifier<GraphQLClient> client = ValueNotifier(
  GraphQLClient(
    cache: InMemoryCache(),
    link: HttpLink(uri: 'https://api.spacex.land/graphql/'),
  ),
);

final String rocketListQuery = """
{
  rockets {
    active
    name
    wikipedia
    first_flight
    mass {
      kg
    }
  }
}

""";

final String launchListQuery = """
{
  launches {
    launch_date_local
    rocket {
      rocket_name
      rocket_type
    }
    launch_site {
      site_name
    }
    launch_success
  }
}

""";