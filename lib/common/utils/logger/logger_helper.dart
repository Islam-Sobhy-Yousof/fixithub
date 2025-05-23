import 'package:logger/logger.dart';

abstract class LoggerHelper {
  void debug({required String message});
  void info({required String message});
  void warning({required String message});
  void error({required String message, dynamic error});
}

class LoggerHelperImpl implements LoggerHelper {
  final Logger _logger;

  LoggerHelperImpl({required Logger logger}) : _logger = logger;
  @override
  void debug({required String message}) {
    _logger.d(message);
  }

  @override
  void error({required String message, error}) {
    _logger.e(
      message,
      error: error,
      stackTrace: StackTrace.current,
    );
  }

  @override
  void info({required String message}) {
    _logger.i(message);
  }

  @override
  void warning({required String message}) {
    _logger.w(message);
  }
}
