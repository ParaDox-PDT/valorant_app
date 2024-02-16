import 'package:dio/dio.dart' hide Headers;

import 'failure.dart';

final class ServerError implements Exception {
  ServerError.withDioError({required DioException error}) {
    _handleError(error);
  }

  ServerError.withError({
    required String message,
    int? code,
  }) {
    _errorMessage = message;
    _errorCode = code;
  }

  int? _errorCode;
  String _errorMessage = '';

  int get errorCode => _errorCode ?? 0;

  String get message => _errorMessage;

  void _handleError(DioException error) {
    _errorCode = error.response?.statusCode ?? 500;
    if (_errorCode == 500) {
      _errorMessage = 'Server error';
      return;
    }
    if (_errorCode == 502) {
      _errorMessage = 'Server down';
      return;
    }

    if (_errorCode == 404) {
      _errorMessage = 'Not found';
      return;
    }
    if (_errorCode == 413) {
      _errorMessage = 'Request Entity Too Large';
      return;
    }
    if (_errorCode == 401) {
      _errorMessage = 'Token expired';
      return;
    }

    if (_errorCode == 403) {
      _errorMessage = 'Forbidden';
      return;
    }

    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        _errorMessage = 'Connection timeout';
      case DioExceptionType.sendTimeout:
        _errorMessage = 'Connection timeout';
      case DioExceptionType.receiveTimeout:
        _errorMessage = 'Connection timeout';
      case DioExceptionType.badResponse:
        {
          if (error.response?.data['Error'] is Map<String, dynamic>) {
            _errorMessage = error.response!.data['Error']['message'].toString();
          } else {
            _errorMessage = error.response!.data['message'].toString();
          }
          break;
        }
      case DioExceptionType.cancel:
        _errorMessage = 'Cancelled';
      case DioExceptionType.unknown:
        _errorMessage = 'Something wrong';
      case DioExceptionType.badCertificate:
        _errorMessage = 'Bad certificate';
      case DioExceptionType.connectionError:
        _errorMessage = 'Connection error';
      case DioExceptionType.connectionTimeout:
      // TODO: Handle this case.
    }
    return;
  }
}

extension ServerErrorExtension on ServerError {
  bool get isTokenExpired => errorCode == 401;

  ServerFailure get failure =>
      ServerFailure(message: message, statusCode: errorCode);
}
