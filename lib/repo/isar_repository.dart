import 'package:ffuf_offline/ffuf_offline.dart';

abstract class IsarRepository<R extends Collection> extends LocalRepository<Isar, R> {
  IsarRepository(super.database);
  /// CRUD operations
}