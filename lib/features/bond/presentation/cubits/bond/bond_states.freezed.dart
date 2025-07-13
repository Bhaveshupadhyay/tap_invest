// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bond_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BondState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BondState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BondState()';
  }
}

/// @nodoc
class $BondStateCopyWith<$Res> {
  $BondStateCopyWith(BondState _, $Res Function(BondState) __);
}

/// @nodoc

class BondStateInitial implements BondState {
  const BondStateInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BondStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BondState.initial()';
  }
}

/// @nodoc

class BondStateLoading implements BondState {
  const BondStateLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BondStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BondState.loading()';
  }
}

/// @nodoc

class BondStateLoaded implements BondState {
  const BondStateLoaded(final List<BondModel> bond) : _bond = bond;

  final List<BondModel> _bond;
  List<BondModel> get bond {
    if (_bond is EqualUnmodifiableListView) return _bond;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bond);
  }

  /// Create a copy of BondState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BondStateLoadedCopyWith<BondStateLoaded> get copyWith =>
      _$BondStateLoadedCopyWithImpl<BondStateLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BondStateLoaded &&
            const DeepCollectionEquality().equals(other._bond, _bond));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bond));

  @override
  String toString() {
    return 'BondState.loaded(bond: $bond)';
  }
}

/// @nodoc
abstract mixin class $BondStateLoadedCopyWith<$Res>
    implements $BondStateCopyWith<$Res> {
  factory $BondStateLoadedCopyWith(
          BondStateLoaded value, $Res Function(BondStateLoaded) _then) =
      _$BondStateLoadedCopyWithImpl;
  @useResult
  $Res call({List<BondModel> bond});
}

/// @nodoc
class _$BondStateLoadedCopyWithImpl<$Res>
    implements $BondStateLoadedCopyWith<$Res> {
  _$BondStateLoadedCopyWithImpl(this._self, this._then);

  final BondStateLoaded _self;
  final $Res Function(BondStateLoaded) _then;

  /// Create a copy of BondState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bond = null,
  }) {
    return _then(BondStateLoaded(
      null == bond
          ? _self._bond
          : bond // ignore: cast_nullable_to_non_nullable
              as List<BondModel>,
    ));
  }
}

/// @nodoc

class BondStateError implements BondState {
  const BondStateError({required this.message});

  final String message;

  /// Create a copy of BondState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BondStateErrorCopyWith<BondStateError> get copyWith =>
      _$BondStateErrorCopyWithImpl<BondStateError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BondStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'BondState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $BondStateErrorCopyWith<$Res>
    implements $BondStateCopyWith<$Res> {
  factory $BondStateErrorCopyWith(
          BondStateError value, $Res Function(BondStateError) _then) =
      _$BondStateErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$BondStateErrorCopyWithImpl<$Res>
    implements $BondStateErrorCopyWith<$Res> {
  _$BondStateErrorCopyWithImpl(this._self, this._then);

  final BondStateError _self;
  final $Res Function(BondStateError) _then;

  /// Create a copy of BondState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(BondStateError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
