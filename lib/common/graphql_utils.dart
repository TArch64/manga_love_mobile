import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http_parser/http_parser.dart';
import 'package:manga_love_mobile/graphql_schema/scalars/multipart_file.dart';
import 'package:mime/mime.dart';

abstract class GraphQLUtils {
  static List<String> getErrorCodes(QueryResult result) {
    var codes = _collectErrorCodes(result);

    for (var code in codes) {
      debugPrint('Api Error: $code');
    }

    return codes;
  }

  static List<String> _collectErrorCodes(QueryResult result) {
    var exception = result.exception!;
    if (exception.linkException != null) {
      return [exception.linkException.toString()];
    }
    var errors = exception.graphqlErrors;
    return errors.isEmpty ? ['unknown'] : errors.map(_getErrorCode).toList();
  }

  static String _getErrorCode(GraphQLError error) {
    var exception = error.extensions!;

    if (exception['exception'] == null) {
      return exception['code'].toString().toLowerCase();
    }

    return exception['exception']['thrownValue']['message'].toString();
  }

  static Future<MultipartFile> xFileToMultipart(XFile file) async {
    return MultipartFile.fromBytes(
      "",
      await file.readAsBytes(),
      filename: file.name,
      contentType: MediaType.parse(lookupMimeType(file.path)!),
    );
  }
}
