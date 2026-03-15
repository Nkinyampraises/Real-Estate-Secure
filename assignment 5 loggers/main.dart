abstract interface class Logger {
  void log(String message);
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print('Console: $message');
  }
}

class FileLogger implements Logger {
  @override
  void log(String message) {
    // Simulated file write.
    print('File: $message');
  }
}

class Application {
  Logger _logger;

  Application(this._logger);

  // Delegation: Application forwards logging to the injected Logger.
  void log(String message) {
    _logger.log(message);
  }

  void swapLogger(Logger newLogger) {
    _logger = newLogger;
  }

  void run() {
    log('Application started');
    log('Doing work...');
    log('Application finished');
  }
}

void main() {
  final app = Application(ConsoleLogger());
  app.run();

  print('--- Swapping logger implementation ---');

  app.swapLogger(FileLogger());
  app.run();
}
