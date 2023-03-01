import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlConfig {
  static HttpLink httpLink = HttpLink('http://10.0.2.2:5000/graphql');

  GraphQLClient graphQLClient() =>
      GraphQLClient(link: httpLink, cache: GraphQLCache());
}
