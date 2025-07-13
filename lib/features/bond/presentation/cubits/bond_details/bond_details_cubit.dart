import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest/features/bond/domain/usecases/get_bond_details.dart';

import 'bond_details_state.dart';

class BondDetailsCubit extends Cubit<BondDetailsState>{

  final GetBondDetails _getBondDetails;
  BondDetailsCubit(GetBondDetails getBondDetails):
        _getBondDetails=getBondDetails,
        super(BondDetailsState.initial());

  Future<void> getAllBondDetails(String isin) async {
    emit(BondDetailsState.loading());
    final res= await _getBondDetails(isin);
    res.fold(
            (error){
          emit(BondDetailsState.error(error.msg??'Error'));
        },
            (data){
          emit(BondDetailsState.loaded(data));
        });
  }

}