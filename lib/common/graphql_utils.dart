import 'package:graphql_flutter/graphql_flutter.dart';

abstract class GraphQLUtils {
  static List<String> getErrorCodes(QueryResult result) {
    if (!result.hasException) return [];

    return result.exception!.graphqlErrors.map((error) {
      return error.extensions!['exception']['thrownValue']['message'] as String;
    }).toList();
  }
}
