import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_invest/features/bond/data/models/bond_model/bond_model.dart';

part 'bond_states.freezed.dart';

@freezed
class BondState with _$BondState {
  const factory BondState.initial() = BondStateInitial;
  const factory BondState.loading() = BondStateLoading;
  const factory BondState.loaded(List<BondModel> bond) = BondStateLoaded;
  const factory BondState.error({required String message}) = BondStateError;
}

