import 'package:clean_code_flutter/core/errors/failures.dart';
import 'package:clean_code_flutter/core/usecase/usecase.dart';
import 'package:clean_code_flutter/features/cleanfeature/domain/entities/clean_param.dart';
import 'package:clean_code_flutter/features/cleanfeature/domain/repositories/clean_repository.dart';
import 'package:dartz/dartz.dart';

class CleanParamsUseCase implements UseCase<bool, CleanParams> {
  final CleanRepository repository;

  CleanParamsUseCase({required this.repository});

  @override
  Future<Either<Failure, bool>> call(CleanParams params) {
    return repository.changePassword(params);
  }
}
