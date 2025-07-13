import 'package:fpdart/fpdart.dart';
import 'package:tap_invest/core/common/error/server_exception.dart';
import 'package:tap_invest/core/usecase/usecase.dart';
import 'package:tap_invest/features/bond/data/models/bond_model/bond_model.dart';
import 'package:tap_invest/features/bond/domain/repositories/bond_repository.dart';

class GetAllBonds implements UseCase<List<BondModel>,NoParams>{

  final BondRepository _bondRepository;

  GetAllBonds(BondRepository bondRepository):_bondRepository=bondRepository;

  @override
  Future<Either<ServerException, List<BondModel>>> call(NoParams params) async {
    return await _bondRepository.getBonds();
  }

}