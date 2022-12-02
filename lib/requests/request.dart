import 'package:isar/isar.dart';

part 'request.g.dart';

@collection
class Request {
  Id id = Isar.autoIncrement;
  late DateTime dateTime;

  late String fullUrl;
  late String encodedBody;
  late String header;

  String? errMsg;
}
