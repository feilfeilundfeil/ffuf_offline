import 'dart:io';

/// Local database abstract class to allow flexibility in using different types of local database.
/// T is a generic type where it should be the local database
/// O is a generic type where it will be the type of object being queried
abstract class LocalRepository<T, O> {
  LocalRepository(this.database);

  final T database;

  /// # post(O object)
  /// should be overridden to create an entity to the local database
  ///
  /// - Parameter object: the object to be created locally
  /// - Returns the created object
  O post(O object);

  /// # read()
  /// should be overridden to read an entity to the local database
  /// should be `get` but `get` is a reserve word
  ///
  /// - Returns the list of object from the local database
  List<O> read();

  /// # put()
  /// should be overridden to update an entity to the local database
  O? put(O data);

  /// # delete()
  /// should be overridden to delete an entity to the local database
  void delete();

  /// # syncData(List<O> data)
  /// this to write all data retrieved, commonly used on start of application.
  /// should be overridden to sync entities to the local database
  void syncData(List<O> data);

  /// # checkConnectivity({String? host})
  /// - Looks up the addresses of a host.
  /// - Checks connectivity to know if a connection is available.
  /// - If the response is not empty there should be an available connection
  /// - If the response is empty a connection is not available
  ///
  /// - Parameter:
  ///   - host : a type of [String] that will be ping to check the connection
  ///
  /// - Returns: Future<bool> that answers the question "Is there a connection available?"
  Future<bool> checkConnectivity({String? host}) async {
    final response = await InternetAddress.lookup(host ?? 'google.com');
    return response.isNotEmpty;
  }
}
