import 'package:equatable/equatable.dart';

sealed class Failures extends Equatable {
  final String message;
  final int statusCode;

  const Failures({required this.message, required this.statusCode});

  @override
  List<Object?> get props => [message, statusCode];
}

class ServerFailure extends Failures {
  const ServerFailure({required super.message, required super.statusCode});
}

class CacheFailure extends Failures {
  const CacheFailure({required super.message}) : super(statusCode: 3);
}
