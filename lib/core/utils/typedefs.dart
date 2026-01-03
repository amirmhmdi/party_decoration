import 'package:dartz/dartz.dart';
import 'package:party_decoration/core/errors/failures.dart';

typedef DataMap = Map<String, dynamic>;
typedef ResultFuture<T> = Future<Either<Failures, T>>;
