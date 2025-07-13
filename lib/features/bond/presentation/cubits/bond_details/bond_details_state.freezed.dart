// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BondDetailsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BondDetailsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BondDetailsState()';
  }
}

/// @nodoc
class $BondDetailsStateCopyWith<$Res> {
  $BondDetailsStateCopyWith(
      BondDetailsState _, $Res Function(BondDetailsState) __);
}

/// @nodoc

class BondDetailsInitial implements BondDetailsState {
  const BondDetailsInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BondDetailsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BondDetailsState.initial()';
  }
}

/// @nodoc

class BondDetailsLoading implements BondDetailsState {
  const BondDetailsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BondDetailsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BondDetailsState.loading()';
  }
}

/// @nodoc

class BondDetailsLoaded implements BondDetailsState {
  const BondDetailsLoaded(this.bond);

  final BondDetails bond;

  /// Create a copy of BondDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BondDetailsLoadedCopyWith<BondDetailsLoaded> get copyWith =>
      _$BondDetailsLoadedCopyWithImpl<BondDetailsLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BondDetailsLoaded &&
            (identical(other.bond, bond) || other.bond == bond));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bond);

  @override
  String toString() {
    return 'BondDetailsState.loaded(bond: $bond)';
  }
}

/// @nodoc
abstract mixin class $BondDetailsLoadedCopyWith<$Res>
    implements $BondDetailsStateCopyWith<$Res> {
  factory $BondDetailsLoadedCopyWith(
          BondDetailsLoaded value, $Res Function(BondDetailsLoaded) _then) =
      _$BondDetailsLoadedCopyWithImpl;
  @useResult
  $Res call({BondDetails bond});
}

/// @nodoc
class _$BondDetailsLoadedCopyWithImpl<$Res>
    implements $BondDetailsLoadedCopyWith<$Res> {
  _$BondDetailsLoadedCopyWithImpl(this._self, this._then);

  final BondDetailsLoaded _self;
  final $Res Function(BondDetailsLoaded) _then;

  /// Create a copy of BondDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bond = null,
  }) {
    return _then(BondDetailsLoaded(
      null == bond
          ? _self.bond
          : bond // ignore: cast_nullable_to_non_nullable
              as BondDetails,
    ));
  }
}

/// @nodoc

class BondDetailsError implements BondDetailsState {
  const BondDetailsError(this.message);

  final String message;

  /// Create a copy of BondDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BondDetailsErrorCopyWith<BondDetailsError> get copyWith =>
      _$BondDetailsErrorCopyWithImpl<BondDetailsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BondDetailsError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'BondDetailsState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $BondDetailsErrorCopyWith<$Res>
    implements $BondDetailsStateCopyWith<$Res> {
  factory $BondDetailsErrorCopyWith(
          BondDetailsError value, $Res Function(BondDetailsError) _then) =
      _$BondDetailsErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$BondDetailsErrorCopyWithImpl<$Res>
    implements $BondDetailsErrorCopyWith<$Res> {
  _$BondDetailsErrorCopyWithImpl(this._self, this._then);

  final BondDetailsError _self;
  final $Res Function(BondDetailsError) _then;

  /// Create a copy of BondDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(BondDetailsError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
