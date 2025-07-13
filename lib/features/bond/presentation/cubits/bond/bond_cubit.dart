import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_invest/core/usecase/usecase.dart';
import 'package:tap_invest/features/bond/data/models/bond_model/bond_model.dart';
import 'package:tap_invest/features/bond/domain/usecases/get_all_bonds.dart';

import 'bond_states.dart';

class BondCubit extends Cubit<BondState>{

  List<BondModel>? _bonds;
  final GetAllBonds _getAllBonds;

  BondCubit(GetAllBonds getAllBonds):
      _getAllBonds=getAllBonds,
        super(BondState.initial());

  Future<void> getAllBonds() async {
    emit(BondState.loading());
    final res= await _getAllBonds(NoParams());
    res.fold(
            (error){
              emit(BondState.error(message: error.msg??'Error'));
              },
            (data){
              _bonds= data;
              emit(BondState.loaded(data));
            });
  }

  void search(String s){
    if(s.isNotEmpty && _bonds!=null){
      final searchTerms = s.toLowerCase().split(RegExp(r'\s+'));

      // print(searchTerms);
      final filteredList = _bonds?.where((bond) {
        return searchTerms.any((term)=>
        term.isNotEmpty && (bond.companyName.toLowerCase().contains(term) ||
            bond.isin.toLowerCase().contains(term))
            // {
            // if(term.isNotEmpty){
            // final companyName= bond.companyName.toLowerCase();
            // final isin= bond.isin.toLowerCase();
            // if(searchTerms.length==1){
            // if(companyName.contains(term) || isin.contains(term)){
            // return true;
            // }
            // return false;
            // }
            // else if(companyName.contains(term) || isin.contains(term)){
            // return true;
            // }
            // }
            // return false;
            // }
        );
      }).toList();

      print(filteredList);

      emit(BondState.loaded(List.from(filteredList??[])));
      // emit(BondState.loaded(filteredList??[]));
    }
    else{
      emit(BondState.loaded(_bonds??[]));
    }
  }
}