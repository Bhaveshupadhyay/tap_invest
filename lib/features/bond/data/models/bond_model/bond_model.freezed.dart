// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BondModel {
  String get logo;
  String get isin;
  String get rating;
  String get companyName;
  List<String> get tags;

  /// Create a copy of BondModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BondModelCopyWith<BondModel> get copyWith =>
      _$BondModelCopyWithImpl<BondModel>(this as BondModel, _$identity);

  /// Serializes this BondModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BondModel &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.isin, isin) || other.isin == isin) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, logo, isin, rating, companyName,
      const DeepCollectionEquality().hash(tags));

  @override
  String toString() {
    return 'BondModel(logo: $logo, isin: $isin, rating: $rating, companyName: $companyName, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class $BondModelCopyWith<$Res> {
  factory $BondModelCopyWith(BondModel value, $Res Function(BondModel) _then) =
      _$BondModelCopyWithImpl;
  @useResult
  $Res call(
      {String logo,
      String isin,
      String rating,
      String companyName,
      List<String> tags});
}

/// @nodoc
class _$BondModelCopyWithImpl<$Res> implements $BondModelCopyWith<$Res> {
  _$BondModelCopyWithImpl(this._self, this._then);

  final BondModel _self;
  final $Res Function(BondModel) _then;

  /// Create a copy of BondModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logo = null,
    Object? isin = null,
    Object? rating = null,
    Object? companyName = null,
    Object? tags = null,
  }) {
    return _then(_self.copyWith(
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      isin: null == isin
          ? _self.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BondModel implements BondModel {
  const _BondModel(
      {required this.logo,
      required this.isin,
      required this.rating,
      required this.companyName,
      required final List<String> tags})
      : _tags = tags;
  factory _BondModel.fromJson(Map<String, dynamic> json) =>
      _$BondModelFromJson(json);

  @override
  final String logo;
  @override
  final String isin;
  @override
  final String rating;
  @override
  final String companyName;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// Create a copy of BondModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BondModelCopyWith<_BondModel> get copyWith =>
      __$BondModelCopyWithImpl<_BondModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BondModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BondModel &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.isin, isin) || other.isin == isin) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, logo, isin, rating, companyName,
      const DeepCollectionEquality().hash(_tags));

  @override
  String toString() {
    return 'BondModel(logo: $logo, isin: $isin, rating: $rating, companyName: $companyName, tags: $tags)';
  }
}

/// @nodoc
abstract mixin class _$BondModelCopyWith<$Res>
    implements $BondModelCopyWith<$Res> {
  factory _$BondModelCopyWith(
          _BondModel value, $Res Function(_BondModel) _then) =
      __$BondModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String logo,
      String isin,
      String rating,
      String companyName,
      List<String> tags});
}

/// @nodoc
class __$BondModelCopyWithImpl<$Res> implements _$BondModelCopyWith<$Res> {
  __$BondModelCopyWithImpl(this._self, this._then);

  final _BondModel _self;
  final $Res Function(_BondModel) _then;

  /// Create a copy of BondModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? logo = null,
    Object? isin = null,
    Object? rating = null,
    Object? companyName = null,
    Object? tags = null,
  }) {
    return _then(_BondModel(
      logo: null == logo
          ? _self.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      isin: null == isin
          ? _self.isin
          : isin // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _self.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
