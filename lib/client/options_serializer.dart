import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';

class RequestOptionsSerializer {
  Future<String> encode(RequestOptions options) async {
    final data = options.data;
    if (data is! String) {
      if (Transformer.isJsonMimeType(options.contentType)) {
        return json.encode(options.data);
      } else if (data is Map) {
        options.contentType = options.contentType ?? Headers.formUrlEncodedContentType;
        return Transformer.urlEncodeMap(data);
      }
    }
    return data.toString();
  }

  Future<RequestOptions> decode(String str) async {
    throw UnimplementedError();
  }
}