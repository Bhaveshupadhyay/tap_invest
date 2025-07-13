import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_invest/features/bond/domain/entities/bond_detail.dart';

part 'bond_details_model.freezed.dart';
part 'bond_details_model.g.dart';

@freezed
abstract class BondDetailsModel with _$BondDetailsModel {
  const factory BondDetailsModel({
    required String logo,
    @JsonKey(name: 'company_name') required String companyName,
    required String description,
    required String isin,
    required String status,
    @JsonKey(name: 'pros_and_cons') required ProsAndConsModel prosAndCons,
    required FinancialsModel financials,
    @JsonKey(name: 'issuer_details') required IssuerDetailsModel issuerDetails,
  }) = _BondDetailsModel;

  factory BondDetailsModel.fromJson(Map<String, dynamic> json) => _$BondDetailsModelFromJson(json);
}

@freezed
abstract class ProsAndConsModel with _$ProsAndConsModel {
  const factory ProsAndConsModel({
    required List<String> pros,
    required List<String> cons,
  }) = _ProsAndConsModel;

  factory ProsAndConsModel.fromJson(Map<String, dynamic> json) =>
      _$ProsAndConsModelFromJson(json);
}

@freezed
abstract class FinancialsModel with _$FinancialsModel {
  const factory FinancialsModel({
    required List<MonthlyDataModel> ebitda,
    required List<MonthlyDataModel> revenue,
  }) = _FinancialsModel;

  factory FinancialsModel.fromJson(Map<String, dynamic> json) =>
      _$FinancialsModelFromJson(json);
}

@freezed
abstract class MonthlyDataModel with _$MonthlyDataModel {
  const factory MonthlyDataModel({
    required String month,
    required int value,
  }) = _MonthlyDataModel;

  factory MonthlyDataModel.fromJson(Map<String, dynamic> json) =>
      _$MonthlyDataModelFromJson(json);
}

@freezed
abstract class IssuerDetailsModel with _$IssuerDetailsModel {
  const factory IssuerDetailsModel({
    @JsonKey(name: 'issuer_name') required String issuerName,
    @JsonKey(name: 'type_of_issuer') required String typeOfIssuer,
    required String sector,
    required String industry,
    @JsonKey(name: 'issuer_nature') required String issuerNature,
    required String cin,
    @JsonKey(name: 'lead_manager') required String leadManager,
    required String registrar,
    @JsonKey(name: 'debenture_trustee') required String debentureTrustee,
  }) = _IssuerDetailsModel;

  factory IssuerDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$IssuerDetailsModelFromJson(json);
}
extension BondDetailsModelX on BondDetailsModel {
  BondDetails toEntity() => BondDetails(
    logo: logo,
    companyName: companyName,
    description: description,
    isin: isin,
    status: status,
    prosAndCons: ProsAndCons(
      pros: prosAndCons.pros,
      cons: prosAndCons.cons,
    ),
    financials: Financials(
      ebitda: financials.ebitda
          .map((e) => MonthlyData(month: e.month, value: e.value))
          .toList(),
      revenue: financials.revenue
          .map((e) => MonthlyData(month: e.month, value: e.value))
          .toList(),
    ),
    issuerDetails: IssuerDetails(
      issuerName: issuerDetails.issuerName,
      typeOfIssuer: issuerDetails.typeOfIssuer,
      sector: issuerDetails.sector,
      industry: issuerDetails.industry,
      issuerNature: issuerDetails.issuerNature,
      cin: issuerDetails.cin,
      leadManager: issuerDetails.leadManager,
      registrar: issuerDetails.registrar,
      debentureTrustee: issuerDetails.debentureTrustee,
    ),
  );
}
