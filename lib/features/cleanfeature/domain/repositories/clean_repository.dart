import 'package:clean_code_flutter/core/errors/failures.dart';
import 'package:clean_code_flutter/features/cleanfeature/domain/entities/clean_param.dart';
import 'package:dartz/dartz.dart';

abstract class CleanRepository {
  Future<Either<Failure, bool>> restorePassword();
  Future<Either<Failure, bool>> changePassword(
      CleanParams restorePasswordParams);
}
