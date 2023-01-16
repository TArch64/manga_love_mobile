import 'package:http/http.dart';
export 'package:http/http.dart';

String dateTimeToJson(DateTime data) {
  return data.toIso8601String();
}

DateTime dateTimeFromJson(dynamic data) {
  return DateTime.parse(data);
}

MultipartFile fileFromJson(dynamic data) {
  return data as MultipartFile;
}

dynamic fileToJson(MultipartFile data) {
  return data;
}
