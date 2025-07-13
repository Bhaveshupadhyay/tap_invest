import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_invest/features/bond/data/models/bond_model/bond_model.dart';
import 'package:tap_invest/features/bond/domain/entities/bond_detail.dart';

part 'bond_details_state.freezed.dart';

@freezed
class BondDetailsState with _$BondDetailsState {
  const factory BondDetailsState.initial() = BondDetailsInitial;
  const factory BondDetailsState.loading() = BondDetailsLoading;
  const factory BondDetailsState.loaded(BondDetails bond) = BondDetailsLoaded;
  const factory BondDetailsState.error(String message) = BondDetailsError;
}
