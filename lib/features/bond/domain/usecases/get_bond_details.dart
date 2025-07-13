import 'package:fpdart/fpdart.dart';
import 'package:tap_invest/core/common/error/server_exception.dart';
import 'package:tap_invest/core/usecase/usecase.dart';
import 'package:tap_invest/features/bond/domain/entities/bond_detail.dart';
import 'package:tap_invest/features/bond/domain/repositories/bond_repository.dart';

class GetBondDetails implements UseCase<BondDetails,String>{

  final BondRepository _bondRepository;

  GetBondDetails(BondRepository bondRepository):_bondRepository=bondRepository;

  @override
  Future<Either<ServerException, BondDetails>> call(String isin) async {
    return await _bondRepository.getBondDetails(isin: isin);
  }

}