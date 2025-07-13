// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BondDetailsModel {
  String get logo;
  @JsonKey(name: 'company_name')
  String get companyName;
  String get description;
  String get isin;
  String get status;
  @JsonKey(name: 'pros_and_cons')
  ProsAndConsModel get prosAndCons;
  FinancialsModel get financials;
  @JsonKey(name: 'issuer_details')
  IssuerDetailsModel get issuerDetails;

  /// Create a copy of BondDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BondDetailsModelCopyWith<BondDetailsModel> get copyWith =>
      _$BondDetailsModelCopyWithImpl<BondDetailsModel>(
          this as BondDetailsModel, _$identity);

  /// Serializes this BondDetailsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BondDetailsModel &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isin, isin) || other.isin == isin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.prosAndCons, prosAndCons) ||
                other.prosAndCons == prosAndCons) &&
            (identical(other.financials, financials) ||
                other.financials == financials) &&
            (identical(other.issuerDetails, issuerDetails) ||
                other.issuerDetails == issuerDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, logo, companyName, description,
      isin, status, prosAndCons, financials, issuerDetails);

  @override
  String toString() {
    return 'BondDetailsModel(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, prosAndCons: $prosAndCons, financials: $financials, issuerDetails: $issuerDetails)';
  }
}

/// @nodoc
abstract mixin class $BondDetailsModelCopyWith<$Res> {
  factory $BondDetailsModelCopyWith(
          BondDetailsModel value, $Res Function(BondDetailsModel) _then) =
      _$BondDetailsModelCopyWithImpl;
  @useResult
  $Res call(
      {String logo,
      @JsonKey(name: 'company_name') String companyName,
      String description,
      String isin,
      String status,
      @JsonKey(name: 'pros_and_cons') ProsAndConsModel prosAndCons,
      FinancialsModel financials,
      @JsonKey(name: 'issuer_details') IssuerDetailsModel issuerDetails});

  $ProsAndConsModelCopyWith<$Res> get prosAndCons;
  $FinancialsModelCopyWith<$Res> get financials;
  $IssuerDetailsModelCopyWith<$Res> get issuerDetails;
}

/// @nodoc
class _$BondDetailsModelCopyWithImpl<$Res>
    implements $BondDetailsModelCopyWith<$Res> {
  _$BondDetailsModelCopyWithImpl(this._self, this._then);

  final BondDetailsModel _self;
  final $Res Function(BondDetailsModel) _then;

  /// Create a copy of BondDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
    Object? companyName = null,
    Object? description = null,
    Object? isin = null,
    Object? status = null,
    Object? prosAndCons = null,
    Object? financials = null,
    Object? issuerDetails = null,
  }) {
    return _then(_self.copyWith(
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isin: null == isin
          ? _self.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      prosAndCons: null == prosAndCons
          ? _self.prosAndCons
          : prosAndCons // ignore: cast_nullable_to_non_nullable
              as ProsAndConsModel,
      financials: null == financials
          ? _self.financials
          : financials // ignore: cast_nullable_to_non_nullable
              as FinancialsModel,
      issuerDetails: null == issuerDetails
          ? _self.issuerDetails
          : issuerDetails // ignore: cast_nullable_to_non_nullable
              as IssuerDetailsModel,
    ));
  }

  /// Create a copy of BondDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProsAndConsModelCopyWith<$Res> get prosAndCons {
    return $ProsAndConsModelCopyWith<$Res>(_self.prosAndCons, (value) {
      return _then(_self.copyWith(prosAndCons: value));
    });
  }

  /// Create a copy of BondDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinancialsModelCopyWith<$Res> get financials {
    return $FinancialsModelCopyWith<$Res>(_self.financials, (value) {
      return _then(_self.copyWith(financials: value));
    });
  }

  /// Create a copy of BondDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IssuerDetailsModelCopyWith<$Res> get issuerDetails {
    return $IssuerDetailsModelCopyWith<$Res>(_self.issuerDetails, (value) {
      return _then(_self.copyWith(issuerDetails: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _BondDetailsModel implements BondDetailsModel {
  const _BondDetailsModel(
      {required this.logo,
      @JsonKey(name: 'company_name') required this.companyName,
      required this.description,
      required this.isin,
      required this.status,
      @JsonKey(name: 'pros_and_cons') required this.prosAndCons,
      required this.financials,
      @JsonKey(name: 'issuer_details') required this.issuerDetails});
  factory _BondDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$BondDetailsModelFromJson(json);

  @override
  final String logo;
  @override
  @JsonKey(name: 'company_name')
  final String companyName;
  @override
  final String description;
  @override
  final String isin;
  @override
  final String status;
  @override
  @JsonKey(name: 'pros_and_cons')
  final ProsAndConsModel prosAndCons;
  @override
  final FinancialsModel financials;
  @override
  @JsonKey(name: 'issuer_details')
  final IssuerDetailsModel issuerDetails;

  /// Create a copy of BondDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BondDetailsModelCopyWith<_BondDetailsModel> get copyWith =>
      __$BondDetailsModelCopyWithImpl<_BondDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BondDetailsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BondDetailsModel &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isin, isin) || other.isin == isin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.prosAndCons, prosAndCons) ||
                other.prosAndCons == prosAndCons) &&
            (identical(other.financials, financials) ||
                other.financials == financials) &&
            (identical(other.issuerDetails, issuerDetails) ||
                other.issuerDetails == issuerDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, logo, companyName, description,
      isin, status, prosAndCons, financials, issuerDetails);

  @override
  String toString() {
    return 'BondDetailsModel(logo: $logo, companyName: $companyName, description: $description, isin: $isin, status: $status, prosAndCons: $prosAndCons, financials: $financials, issuerDetails: $issuerDetails)';
  }
}

/// @nodoc
abstract mixin class _$BondDetailsModelCopyWith<$Res>
    implements $BondDetailsModelCopyWith<$Res> {
  factory _$BondDetailsModelCopyWith(
          _BondDetailsModel value, $Res Function(_BondDetailsModel) _then) =
      __$BondDetailsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String logo,
      @JsonKey(name: 'company_name') String companyName,
      String description,
      String isin,
      String status,
      @JsonKey(name: 'pros_and_cons') ProsAndConsModel prosAndCons,
      FinancialsModel financials,
      @JsonKey(name: 'issuer_details') IssuerDetailsModel issuerDetails});

  @override
  $ProsAndConsModelCopyWith<$Res> get prosAndCons;
  @override
  $FinancialsModelCopyWith<$Res> get financials;
  @override
  $IssuerDetailsModelCopyWith<$Res> get issuerDetails;
}

/// @nodoc
class __$BondDetailsModelCopyWithImpl<$Res>
    implements _$BondDetailsModelCopyWith<$Res> {
  __$BondDetailsModelCopyWithImpl(this._self, this._then);

  final _BondDetailsModel _self;
  final $Res Function(_BondDetailsModel) _then;

  /// Create a copy of BondDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? logo = null,
    Object? companyName = null,
    Object? description = null,
    Object? isin = null,
    Object? status = null,
    Object? prosAndCons = null,
    Object? financials = null,
    Object? issuerDetails = null,
  }) {
    return _then(_BondDetailsModel(
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isin: null == isin
          ? _self.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      prosAndCons: null == prosAndCons
          ? _self.prosAndCons
          : prosAndCons // ignore: cast_nullable_to_non_nullable
              as ProsAndConsModel,
      financials: null == financials
          ? _self.financials
          : financials // ignore: cast_nullable_to_non_nullable
              as FinancialsModel,
      issuerDetails: null == issuerDetails
          ? _self.issuerDetails
          : issuerDetails // ignore: cast_nullable_to_non_nullable
              as IssuerDetailsModel,
    ));
  }

  /// Create a copy of BondDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProsAndConsModelCopyWith<$Res> get prosAndCons {
    return $ProsAndConsModelCopyWith<$Res>(_self.prosAndCons, (value) {
      return _then(_self.copyWith(prosAndCons: value));
    });
  }

  /// Create a copy of BondDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FinancialsModelCopyWith<$Res> get financials {
    return $FinancialsModelCopyWith<$Res>(_self.financials, (value) {
      return _then(_self.copyWith(financials: value));
    });
  }

  /// Create a copy of BondDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IssuerDetailsModelCopyWith<$Res> get issuerDetails {
    return $IssuerDetailsModelCopyWith<$Res>(_self.issuerDetails, (value) {
      return _then(_self.copyWith(issuerDetails: value));
    });
  }
}

/// @nodoc
mixin _$ProsAndConsModel {
  List<String> get pros;
  List<String> get cons;

  /// Create a copy of ProsAndConsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProsAndConsModelCopyWith<ProsAndConsModel> get copyWith =>
      _$ProsAndConsModelCopyWithImpl<ProsAndConsModel>(
          this as ProsAndConsModel, _$identity);

  /// Serializes this ProsAndConsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProsAndConsModel &&
            const DeepCollectionEquality().equals(other.pros, pros) &&
            const DeepCollectionEquality().equals(other.cons, cons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pros),
      const DeepCollectionEquality().hash(cons));

  @override
  String toString() {
    return 'ProsAndConsModel(pros: $pros, cons: $cons)';
  }
}

/// @nodoc
abstract mixin class $ProsAndConsModelCopyWith<$Res> {
  factory $ProsAndConsModelCopyWith(
          ProsAndConsModel value, $Res Function(ProsAndConsModel) _then) =
      _$ProsAndConsModelCopyWithImpl;
  @useResult
  $Res call({List<String> pros, List<String> cons});
}

/// @nodoc
class _$ProsAndConsModelCopyWithImpl<$Res>
    implements $ProsAndConsModelCopyWith<$Res> {
  _$ProsAndConsModelCopyWithImpl(this._self, this._then);

  final ProsAndConsModel _self;
  final $Res Function(ProsAndConsModel) _then;

  /// Create a copy of ProsAndConsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pros = null,
    Object? cons = null,
  }) {
    return _then(_self.copyWith(
      pros: null == pros
          ? _self.pros
          : pros // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cons: null == cons
          ? _self.cons
          : cons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ProsAndConsModel implements ProsAndConsModel {
  const _ProsAndConsModel(
      {required final List<String> pros, required final List<String> cons})
      : _pros = pros,
        _cons = cons;
  factory _ProsAndConsModel.fromJson(Map<String, dynamic> json) =>
      _$ProsAndConsModelFromJson(json);

  final List<String> _pros;
  @override
  List<String> get pros {
    if (_pros is EqualUnmodifiableListView) return _pros;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pros);
  }

  final List<String> _cons;
  @override
  List<String> get cons {
    if (_cons is EqualUnmodifiableListView) return _cons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cons);
  }

  /// Create a copy of ProsAndConsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProsAndConsModelCopyWith<_ProsAndConsModel> get copyWith =>
      __$ProsAndConsModelCopyWithImpl<_ProsAndConsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProsAndConsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProsAndConsModel &&
            const DeepCollectionEquality().equals(other._pros, _pros) &&
            const DeepCollectionEquality().equals(other._cons, _cons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pros),
      const DeepCollectionEquality().hash(_cons));

  @override
  String toString() {
    return 'ProsAndConsModel(pros: $pros, cons: $cons)';
  }
}

/// @nodoc
abstract mixin class _$ProsAndConsModelCopyWith<$Res>
    implements $ProsAndConsModelCopyWith<$Res> {
  factory _$ProsAndConsModelCopyWith(
          _ProsAndConsModel value, $Res Function(_ProsAndConsModel) _then) =
      __$ProsAndConsModelCopyWithImpl;
  @override
  @useResult
  $Res call({List<String> pros, List<String> cons});
}

/// @nodoc
class __$ProsAndConsModelCopyWithImpl<$Res>
    implements _$ProsAndConsModelCopyWith<$Res> {
  __$ProsAndConsModelCopyWithImpl(this._self, this._then);

  final _ProsAndConsModel _self;
  final $Res Function(_ProsAndConsModel) _then;

  /// Create a copy of ProsAndConsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pros = null,
    Object? cons = null,
  }) {
    return _then(_ProsAndConsModel(
      pros: null == pros
          ? _self._pros
          : pros // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cons: null == cons
          ? _self._cons
          : cons // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$FinancialsModel {
  List<MonthlyDataModel> get ebitda;
  List<MonthlyDataModel> get revenue;

  /// Create a copy of FinancialsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FinancialsModelCopyWith<FinancialsModel> get copyWith =>
      _$FinancialsModelCopyWithImpl<FinancialsModel>(
          this as FinancialsModel, _$identity);

  /// Serializes this FinancialsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FinancialsModel &&
            const DeepCollectionEquality().equals(other.ebitda, ebitda) &&
            const DeepCollectionEquality().equals(other.revenue, revenue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ebitda),
      const DeepCollectionEquality().hash(revenue));

  @override
  String toString() {
    return 'FinancialsModel(ebitda: $ebitda, revenue: $revenue)';
  }
}

/// @nodoc
abstract mixin class $FinancialsModelCopyWith<$Res> {
  factory $FinancialsModelCopyWith(
          FinancialsModel value, $Res Function(FinancialsModel) _then) =
      _$FinancialsModelCopyWithImpl;
  @useResult
  $Res call({List<MonthlyDataModel> ebitda, List<MonthlyDataModel> revenue});
}

/// @nodoc
class _$FinancialsModelCopyWithImpl<$Res>
    implements $FinancialsModelCopyWith<$Res> {
  _$FinancialsModelCopyWithImpl(this._self, this._then);

  final FinancialsModel _self;
  final $Res Function(FinancialsModel) _then;

  /// Create a copy of FinancialsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ebitda = null,
    Object? revenue = null,
  }) {
    return _then(_self.copyWith(
      ebitda: null == ebitda
          ? _self.ebitda
          : ebitda // ignore: cast_nullable_to_non_nullable
              as List<MonthlyDataModel>,
      revenue: null == revenue
          ? _self.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as List<MonthlyDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FinancialsModel implements FinancialsModel {
  const _FinancialsModel(
      {required final List<MonthlyDataModel> ebitda,
      required final List<MonthlyDataModel> revenue})
      : _ebitda = ebitda,
        _revenue = revenue;
  factory _FinancialsModel.fromJson(Map<String, dynamic> json) =>
      _$FinancialsModelFromJson(json);

  final List<MonthlyDataModel> _ebitda;
  @override
  List<MonthlyDataModel> get ebitda {
    if (_ebitda is EqualUnmodifiableListView) return _ebitda;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ebitda);
  }

  final List<MonthlyDataModel> _revenue;
  @override
  List<MonthlyDataModel> get revenue {
    if (_revenue is EqualUnmodifiableListView) return _revenue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_revenue);
  }

  /// Create a copy of FinancialsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FinancialsModelCopyWith<_FinancialsModel> get copyWith =>
      __$FinancialsModelCopyWithImpl<_FinancialsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FinancialsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FinancialsModel &&
            const DeepCollectionEquality().equals(other._ebitda, _ebitda) &&
            const DeepCollectionEquality().equals(other._revenue, _revenue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ebitda),
      const DeepCollectionEquality().hash(_revenue));

  @override
  String toString() {
    return 'FinancialsModel(ebitda: $ebitda, revenue: $revenue)';
  }
}

/// @nodoc
abstract mixin class _$FinancialsModelCopyWith<$Res>
    implements $FinancialsModelCopyWith<$Res> {
  factory _$FinancialsModelCopyWith(
          _FinancialsModel value, $Res Function(_FinancialsModel) _then) =
      __$FinancialsModelCopyWithImpl;
  @override
  @useResult
  $Res call({List<MonthlyDataModel> ebitda, List<MonthlyDataModel> revenue});
}

/// @nodoc
class __$FinancialsModelCopyWithImpl<$Res>
    implements _$FinancialsModelCopyWith<$Res> {
  __$FinancialsModelCopyWithImpl(this._self, this._then);

  final _FinancialsModel _self;
  final $Res Function(_FinancialsModel) _then;

  /// Create a copy of FinancialsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ebitda = null,
    Object? revenue = null,
  }) {
    return _then(_FinancialsModel(
      ebitda: null == ebitda
          ? _self._ebitda
          : ebitda // ignore: cast_nullable_to_non_nullable
              as List<MonthlyDataModel>,
      revenue: null == revenue
          ? _self._revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as List<MonthlyDataModel>,
    ));
  }
}

/// @nodoc
mixin _$MonthlyDataModel {
  String get month;
  int get value;

  /// Create a copy of MonthlyDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MonthlyDataModelCopyWith<MonthlyDataModel> get copyWith =>
      _$MonthlyDataModelCopyWithImpl<MonthlyDataModel>(
          this as MonthlyDataModel, _$identity);

  /// Serializes this MonthlyDataModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MonthlyDataModel &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, month, value);

  @override
  String toString() {
    return 'MonthlyDataModel(month: $month, value: $value)';
  }
}

/// @nodoc
abstract mixin class $MonthlyDataModelCopyWith<$Res> {
  factory $MonthlyDataModelCopyWith(
          MonthlyDataModel value, $Res Function(MonthlyDataModel) _then) =
      _$MonthlyDataModelCopyWithImpl;
  @useResult
  $Res call({String month, int value});
}

/// @nodoc
class _$MonthlyDataModelCopyWithImpl<$Res>
    implements $MonthlyDataModelCopyWith<$Res> {
  _$MonthlyDataModelCopyWithImpl(this._self, this._then);

  final MonthlyDataModel _self;
  final $Res Function(MonthlyDataModel) _then;

  /// Create a copy of MonthlyDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? value = null,
  }) {
    return _then(_self.copyWith(
      month: null == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MonthlyDataModel implements MonthlyDataModel {
  const _MonthlyDataModel({required this.month, required this.value});
  factory _MonthlyDataModel.fromJson(Map<String, dynamic> json) =>
      _$MonthlyDataModelFromJson(json);

  @override
  final String month;
  @override
  final int value;

  /// Create a copy of MonthlyDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MonthlyDataModelCopyWith<_MonthlyDataModel> get copyWith =>
      __$MonthlyDataModelCopyWithImpl<_MonthlyDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MonthlyDataModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MonthlyDataModel &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, month, value);

  @override
  String toString() {
    return 'MonthlyDataModel(month: $month, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$MonthlyDataModelCopyWith<$Res>
    implements $MonthlyDataModelCopyWith<$Res> {
  factory _$MonthlyDataModelCopyWith(
          _MonthlyDataModel value, $Res Function(_MonthlyDataModel) _then) =
      __$MonthlyDataModelCopyWithImpl;
  @override
  @useResult
  $Res call({String month, int value});
}

/// @nodoc
class __$MonthlyDataModelCopyWithImpl<$Res>
    implements _$MonthlyDataModelCopyWith<$Res> {
  __$MonthlyDataModelCopyWithImpl(this._self, this._then);

  final _MonthlyDataModel _self;
  final $Res Function(_MonthlyDataModel) _then;

  /// Create a copy of MonthlyDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? month = null,
    Object? value = null,
  }) {
    return _then(_MonthlyDataModel(
      month: null == month
          ? _self.month
          : month // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$IssuerDetailsModel {
  @JsonKey(name: 'issuer_name')
  String get issuerName;
  @JsonKey(name: 'type_of_issuer')
  String get typeOfIssuer;
  String get sector;
  String get industry;
  @JsonKey(name: 'issuer_nature')
  String get issuerNature;
  String get cin;
  @JsonKey(name: 'lead_manager')
  String get leadManager;
  String get registrar;
  @JsonKey(name: 'debenture_trustee')
  String get debentureTrustee;

  /// Create a copy of IssuerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IssuerDetailsModelCopyWith<IssuerDetailsModel> get copyWith =>
      _$IssuerDetailsModelCopyWithImpl<IssuerDetailsModel>(
          this as IssuerDetailsModel, _$identity);

  /// Serializes this IssuerDetailsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IssuerDetailsModel &&
            (identical(other.issuerName, issuerName) ||
                other.issuerName == issuerName) &&
            (identical(other.typeOfIssuer, typeOfIssuer) ||
                other.typeOfIssuer == typeOfIssuer) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.issuerNature, issuerNature) ||
                other.issuerNature == issuerNature) &&
            (identical(other.cin, cin) || other.cin == cin) &&
            (identical(other.leadManager, leadManager) ||
                other.leadManager == leadManager) &&
            (identical(other.registrar, registrar) ||
                other.registrar == registrar) &&
            (identical(other.debentureTrustee, debentureTrustee) ||
                other.debentureTrustee == debentureTrustee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, issuerName, typeOfIssuer, sector,
      industry, issuerNature, cin, leadManager, registrar, debentureTrustee);

  @override
  String toString() {
    return 'IssuerDetailsModel(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
  }
}

/// @nodoc
abstract mixin class $IssuerDetailsModelCopyWith<$Res> {
  factory $IssuerDetailsModelCopyWith(
          IssuerDetailsModel value, $Res Function(IssuerDetailsModel) _then) =
      _$IssuerDetailsModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'issuer_name') String issuerName,
      @JsonKey(name: 'type_of_issuer') String typeOfIssuer,
      String sector,
      String industry,
      @JsonKey(name: 'issuer_nature') String issuerNature,
      String cin,
      @JsonKey(name: 'lead_manager') String leadManager,
      String registrar,
      @JsonKey(name: 'debenture_trustee') String debentureTrustee});
}

/// @nodoc
class _$IssuerDetailsModelCopyWithImpl<$Res>
    implements $IssuerDetailsModelCopyWith<$Res> {
  _$IssuerDetailsModelCopyWithImpl(this._self, this._then);

  final IssuerDetailsModel _self;
  final $Res Function(IssuerDetailsModel) _then;

  /// Create a copy of IssuerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issuerName = null,
    Object? typeOfIssuer = null,
    Object? sector = null,
    Object? industry = null,
    Object? issuerNature = null,
    Object? cin = null,
    Object? leadManager = null,
    Object? registrar = null,
    Object? debentureTrustee = null,
  }) {
    return _then(_self.copyWith(
      issuerName: null == issuerName
          ? _self.issuerName
          : issuerName // ignore: cast_nullable_to_non_nullable
              as String,
      typeOfIssuer: null == typeOfIssuer
          ? _self.typeOfIssuer
          : typeOfIssuer // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _self.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      industry: null == industry
          ? _self.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      issuerNature: null == issuerNature
          ? _self.issuerNature
          : issuerNature // ignore: cast_nullable_to_non_nullable
              as String,
      cin: null == cin
          ? _self.cin
          : cin // ignore: cast_nullable_to_non_nullable
              as String,
      leadManager: null == leadManager
          ? _self.leadManager
          : leadManager // ignore: cast_nullable_to_non_nullable
              as String,
      registrar: null == registrar
          ? _self.registrar
          : registrar // ignore: cast_nullable_to_non_nullable
              as String,
      debentureTrustee: null == debentureTrustee
          ? _self.debentureTrustee
          : debentureTrustee // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _IssuerDetailsModel implements IssuerDetailsModel {
  const _IssuerDetailsModel(
      {@JsonKey(name: 'issuer_name') required this.issuerName,
      @JsonKey(name: 'type_of_issuer') required this.typeOfIssuer,
      required this.sector,
      required this.industry,
      @JsonKey(name: 'issuer_nature') required this.issuerNature,
      required this.cin,
      @JsonKey(name: 'lead_manager') required this.leadManager,
      required this.registrar,
      @JsonKey(name: 'debenture_trustee') required this.debentureTrustee});
  factory _IssuerDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$IssuerDetailsModelFromJson(json);

  @override
  @JsonKey(name: 'issuer_name')
  final String issuerName;
  @override
  @JsonKey(name: 'type_of_issuer')
  final String typeOfIssuer;
  @override
  final String sector;
  @override
  final String industry;
  @override
  @JsonKey(name: 'issuer_nature')
  final String issuerNature;
  @override
  final String cin;
  @override
  @JsonKey(name: 'lead_manager')
  final String leadManager;
  @override
  final String registrar;
  @override
  @JsonKey(name: 'debenture_trustee')
  final String debentureTrustee;

  /// Create a copy of IssuerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IssuerDetailsModelCopyWith<_IssuerDetailsModel> get copyWith =>
      __$IssuerDetailsModelCopyWithImpl<_IssuerDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IssuerDetailsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IssuerDetailsModel &&
            (identical(other.issuerName, issuerName) ||
                other.issuerName == issuerName) &&
            (identical(other.typeOfIssuer, typeOfIssuer) ||
                other.typeOfIssuer == typeOfIssuer) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.industry, industry) ||
                other.industry == industry) &&
            (identical(other.issuerNature, issuerNature) ||
                other.issuerNature == issuerNature) &&
            (identical(other.cin, cin) || other.cin == cin) &&
            (identical(other.leadManager, leadManager) ||
                other.leadManager == leadManager) &&
            (identical(other.registrar, registrar) ||
                other.registrar == registrar) &&
            (identical(other.debentureTrustee, debentureTrustee) ||
                other.debentureTrustee == debentureTrustee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, issuerName, typeOfIssuer, sector,
      industry, issuerNature, cin, leadManager, registrar, debentureTrustee);

  @override
  String toString() {
    return 'IssuerDetailsModel(issuerName: $issuerName, typeOfIssuer: $typeOfIssuer, sector: $sector, industry: $industry, issuerNature: $issuerNature, cin: $cin, leadManager: $leadManager, registrar: $registrar, debentureTrustee: $debentureTrustee)';
  }
}

/// @nodoc
abstract mixin class _$IssuerDetailsModelCopyWith<$Res>
    implements $IssuerDetailsModelCopyWith<$Res> {
  factory _$IssuerDetailsModelCopyWith(
          _IssuerDetailsModel value, $Res Function(_IssuerDetailsModel) _then) =
      __$IssuerDetailsModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'issuer_name') String issuerName,
      @JsonKey(name: 'type_of_issuer') String typeOfIssuer,
      String sector,
      String industry,
      @JsonKey(name: 'issuer_nature') String issuerNature,
      String cin,
      @JsonKey(name: 'lead_manager') String leadManager,
      String registrar,
      @JsonKey(name: 'debenture_trustee') String debentureTrustee});
}

/// @nodoc
class __$IssuerDetailsModelCopyWithImpl<$Res>
    implements _$IssuerDetailsModelCopyWith<$Res> {
  __$IssuerDetailsModelCopyWithImpl(this._self, this._then);

  final _IssuerDetailsModel _self;
  final $Res Function(_IssuerDetailsModel) _then;

  /// Create a copy of IssuerDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? issuerName = null,
    Object? typeOfIssuer = null,
    Object? sector = null,
    Object? industry = null,
    Object? issuerNature = null,
    Object? cin = null,
    Object? leadManager = null,
    Object? registrar = null,
    Object? debentureTrustee = null,
  }) {
    return _then(_IssuerDetailsModel(
      issuerName: null == issuerName
          ? _self.issuerName
          : issuerName // ignore: cast_nullable_to_non_nullable
              as String,
      typeOfIssuer: null == typeOfIssuer
          ? _self.typeOfIssuer
          : typeOfIssuer // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _self.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String,
      industry: null == industry
          ? _self.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
      issuerNature: null == issuerNature
          ? _self.issuerNature
          : issuerNature // ignore: cast_nullable_to_non_nullable
              as String,
      cin: null == cin
          ? _self.cin
          : cin // ignore: cast_nullable_to_non_nullable
              as String,
      leadManager: null == leadManager
          ? _self.leadManager
          : leadManager // ignore: cast_nullable_to_non_nullable
              as String,
      registrar: null == registrar
          ? _self.registrar
          : registrar // ignore: cast_nullable_to_non_nullable
              as String,
      debentureTrustee: null == debentureTrustee
          ? _self.debentureTrustee
          : debentureTrustee // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
