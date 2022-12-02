import 'package:dio/dio.dart';

typedef AuthTokenProvider = Future<String?> Function();

class AuthInterceptor extends Interceptor {
  AuthInterceptor(this.tokenProvider);

  final AuthTokenProvider tokenProvider;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final authToken = await tokenProvider();
    if (authToken != null) {
      options.headers['Authorization'] = 'Bearer $authToken';
    }
    return handler.next(options);
  }
}
