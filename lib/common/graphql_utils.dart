import 'package:graphql_flutter/graphql_flutter.dart';

abstract class GraphQLUtils {
  static List<String> getErrorCodes(QueryResult result) {
    if (result.exception!.graphqlErrors.isEmpty) {
      return ['unknown'];
    }
    return result.exception!.graphqlErrors.map(_getErrorCode).toList();
  }

  static String _getErrorCode(GraphQLError error) {
    return error.extensions!['exception']['thrownValue']['message'] as String;
  }
}
