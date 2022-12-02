import 'package:json_annotation/json_annotation.dart';

const datetime = DateTimeConverter();

class DateTimeConverter extends JsonConverter<DateTime, String> {
  const DateTimeConverter();
  @override
  DateTime fromJson(String json) => DateTime.parse(json).toLocal();
  @override
  String toJson(DateTime object) => object.toUtc().toIso8601String();
}