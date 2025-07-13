
import 'package:fpdart/fpdart.dart';
import 'package:tap_invest/core/common/error/server_exception.dart';
import 'package:tap_invest/features/bond/data/datasource/bond_data_source.dart';
import 'package:tap_invest/features/bond/data/models/bond_details_model/bond_details_model.dart';
import 'package:tap_invest/features/bond/data/models/bond_model/bond_model.dart';

import 'package:tap_invest/features/bond/domain/entities/bond.dart';

import 'package:tap_invest/features/bond/domain/entities/bond_detail.dart';

import '../../domain/repositories/bond_repository.dart';

class BondRepositoryImpl implements BondRepository{

  final BondDataSource _bondDataSource;

  BondRepositoryImpl({required BondDataSource bondDataSource}):_bondDataSource=bondDataSource;

  @override
  Future<Either<ServerException,BondDetails>> getBondDetails({required String isin}) async {
    try{
      final res= await _bondDataSource.getBondDetails(isin: isin);
      return right(res.toEntity());
    }
    on ServerException catch(e){
      return left(e);
    }
    catch(e){
      return left(ServerException(msg: e.toString()));
    }
  }

  @override
  Future<Either<ServerException,List<BondModel>>> getBonds() async {
    try{
      final res= await _bondDataSource.loadBonds();
      return right(res);
    }
    on ServerException catch(e){
      return left(e);
    }
    catch(e){
      return left(ServerException(msg: e.toString()));
    }
  }

}