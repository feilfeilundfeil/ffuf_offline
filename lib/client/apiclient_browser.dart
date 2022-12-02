import 'package:dio/dio.dart';
import 'package:dio/browser_imp.dart';

class ApiClient extends DioForBrowser {
  ApiClient({required BaseOptions options}) : super(options);

  @Deprecated('Dio instance getter, for old handler')
  Dio get dio => this;
}
