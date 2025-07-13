import 'package:fpdart/fpdart.dart';

import '../error/server_exception.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<ServerException, SuccessType>> call(Params params);
}

class NoParams {}