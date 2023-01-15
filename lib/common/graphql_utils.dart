import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class GraphQLUtils {
  static List<String> getErrorCodes(QueryResult result) {
    var codes = _collectErrorCodes(result);

    for (var code in codes) {
      debugPrint('Api Error: $code');
    }

    return codes;
  }

  static List<String> _collectErrorCodes(QueryResult result) {
    if (result.exception!.graphqlErrors.isEmpty) {
      return ['unknown'];
    }
    return result.exception!.graphqlErrors.map(_getErrorCode).toList();
  }

  static String _getErrorCode(GraphQLError error) {
    var exception = error.extensions!;

    if (exception['exception'] == null) {
      return exception['code'].toString().toLowerCase();
    }

    return exception['exception']['thrownValue']['message'].toString();
  }
}
