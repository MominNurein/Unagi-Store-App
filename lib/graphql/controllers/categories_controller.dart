import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:unagi_app/graphql/config/graphql_config.dart';
import 'package:unagi_app/models/category.dart';

class CategoriesController {
  static GraphQlConfig graphQlConfig = GraphQlConfig();
  GraphQLClient client = graphQlConfig.graphQLClient();

  Future<List<Category>> getCategories() async {
    try {
      QueryResult result = await client.query(QueryOptions(document: gql("""
        {
          categories {
            id
            name
            image
          }
        }
        """)));

      if (result.hasException) {
        throw Exception(result.exception);
      }

      List? res = result.data?['categories'];

      if (res == null || res.isEmpty) {
        return [];
      }

      List<Category> categories = res
          .map((category) => Category(
              id: category['id'],
              name: category['name'],
              image: category['image']))
          .toList();
      return categories;
    } catch (e) {
      throw Exception(e);
    }
  }
}
