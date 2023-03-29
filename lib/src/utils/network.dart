import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NetworkConfig {
  static const String baseUrl = "https://dkmh.hcmuaf.edu.vn/api/";
  static const int connectTimeout = 5000;
  static const int receiveTimeout = 3000;
  
}

class Network {
  static final Network _singleton = Network._internal();

  factory Network() {
    return _singleton;
  }

  Network._internal() {
    dio.options.connectTimeout =
        Duration(milliseconds: NetworkConfig.connectTimeout);
    dio.options.receiveTimeout =
        Duration(milliseconds: NetworkConfig.receiveTimeout);
    init();
  }

  final dio = Dio();
  String token = '';

  void init() {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          } else {
            options.headers['Authorization'] = '';
          }
          return handler.next(options);
        },
      ),
    );
  }

  void setToken(String token) {
    this.token = token;
  }

  void clearToken() {
    token = '';
  }

  Network get instance => _singleton;
}
