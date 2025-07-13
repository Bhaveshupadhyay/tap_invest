import 'package:fpdart/fpdart.dart';
import 'package:tap_invest/core/common/error/server_exception.dart';
import 'package:tap_invest/features/bond/data/models/bond_model/bond_model.dart';
import 'package:tap_invest/features/bond/domain/entities/bond_detail.dart';

import '../entities/bond.dart';

abstract interface class BondRepository{
  Future<Either<ServerException,List<BondModel>>> getBonds();
  Future<Either<ServerException,BondDetails>> getBondDetails({required String isin});
}