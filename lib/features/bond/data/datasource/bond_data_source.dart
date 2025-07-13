import 'package:dio/dio.dart';
import 'package:tap_invest/core/common/error/server_exception.dart';
import 'package:tap_invest/features/bond/data/models/bond_details_model/bond_details_model.dart';
import 'package:tap_invest/features/bond/data/models/bond_model/bond_model.dart';

abstract interface class BondDataSource{
  Future<List<BondModel>> loadBonds();
  Future<BondDetailsModel> getBondDetails({required String isin});
}

class BondDataSourceImpl implements BondDataSource{

  final Dio _dio;


  BondDataSourceImpl({required Dio dio}): _dio=dio;

  @override
  Future<BondDetailsModel> getBondDetails({required String isin}) async {
    try{
      final res=await _dio.get('https://eo61q3zd4heiwke.m.pipedream.net');
      if(res.statusCode==200){
        return BondDetailsModel.fromJson(res.data);
      }
      else{
        throw ServerException(msg: res.statusMessage);
      }
    }
    on DioException catch(e){
      throw ServerException(msg: e.message);
    }
    catch(e){
      throw ServerException(msg: e.toString());
    }
  }

  @override
  Future<List<BondModel>> loadBonds() async {
    try{
      final res=await _dio.get('https://eol122duf9sy4de.m.pipedream.net');
      if(res.statusCode==200){
        print(res.data['data'] as List);
        final bondsList= res.data['data'] as List;
        return bondsList.map((e)=>BondModel.fromJson(e)).toList();
      }
      else{
        throw ServerException(msg: res.statusMessage);
      }
    }
    on DioException catch(e){
      throw ServerException(msg: e.message);
    }
    catch(e){
      throw ServerException(msg: e.toString());
    }
  }
  
}