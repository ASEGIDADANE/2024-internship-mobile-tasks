// core/error/failures.dart

abstract class Failure {
  final String message;

  Failure({required this.message});

  @override
  String toString() {
    return 'Failure: $message';
  }
}

class ServerFailure extends Failure {
  ServerFailure({String message = 'Server Failure'}) : super(message: message);
}

class NetworkFailure extends Failure {
  NetworkFailure({String message = 'Network Failure'}) : super(message: message);
}

class CacheFailure extends Failure {
  CacheFailure({String message = 'Cache Failure'}) : super(message: message);
}

// Add more specific failure classes as needed