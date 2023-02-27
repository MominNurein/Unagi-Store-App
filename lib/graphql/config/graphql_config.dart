import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQlConfig {
  static HttpLink httpLink = HttpLink('http://localhost:5000/graphql');

  GraphQLClient graphQLClient() =>
      GraphQLClient(link: httpLink, cache: GraphQLCache());
}
