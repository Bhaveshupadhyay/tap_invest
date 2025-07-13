import 'package:fpdart/fpdart.dart';
import 'package:tap_invest/core/common/error/server_exception.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<ServerException, SuccessType>> call(Params params);
}

class NoParams {}