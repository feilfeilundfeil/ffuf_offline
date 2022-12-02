import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';

class ApiClient extends DioForNative {
  ApiClient({required BaseOptions options}) : super(options);

  @Deprecated('Dio instance getter, for old handler')
  Dio get dio => this;
}
