import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../models/product.dart';
import '../config/graphql_config.dart';

class ProductsController {
  static GraphQlConfig graphQlConfig = GraphQlConfig();
  GraphQLClient client = graphQlConfig.graphQLClient();

  Future<List<Product>> fetchProducts() async {
    try {
      QueryResult result = await client.query(QueryOptions(document: gql("""
          {
            products {
              id
              name
              description
              price
              stock
              discount_percentage
              thumbnail
              condition
              rating
              category
              brand {
                id
                name
                logo
              }
              images {
                id
                image
              }
            }
          }
        """)));

      if (result.hasException) {
        throw Exception(result.exception);
      }

      List res = result.data?['products'];

      List<Product>? products = res
          .map(
            (product) => Product.fromJson(product),
          )
          .toList();
      debugPrint(products.toString());
      return products;
    } catch (e) {
      throw Exception(e);
    }
  }
}
