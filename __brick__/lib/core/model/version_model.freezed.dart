// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VersionModel _$VersionModelFromJson(Map<String, dynamic> json) {
  return _VersionModel.fromJson(json);
}

/// @nodoc
mixin _$VersionModel {
  String get name => throw _privateConstructorUsedError;
  String get minimumVersionName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionModelCopyWith<VersionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionModelCopyWith<$Res> {
  factory $VersionModelCopyWith(
          VersionModel value, $Res Function(VersionModel) then) =
      _$VersionModelCopyWithImpl<$Res, VersionModel>;
  @useResult
  $Res call({String name, String minimumVersionName});
}

/// @nodoc
class _$VersionModelCopyWithImpl<$Res, $Val extends VersionModel>
    implements $VersionModelCopyWith<$Res> {
  _$VersionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? minimumVersionName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      minimumVersionName: null == minimumVersionName
          ? _value.minimumVersionName
          : minimumVersionName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersionModelImplCopyWith<$Res>
    implements $VersionModelCopyWith<$Res> {
  factory _$$VersionModelImplCopyWith(
          _$VersionModelImpl value, $Res Function(_$VersionModelImpl) then) =
      __$$VersionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String minimumVersionName});
}

/// @nodoc
class __$$VersionModelImplCopyWithImpl<$Res>
    extends _$VersionModelCopyWithImpl<$Res, _$VersionModelImpl>
    implements _$$VersionModelImplCopyWith<$Res> {
  __$$VersionModelImplCopyWithImpl(
      _$VersionModelImpl _value, $Res Function(_$VersionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? minimumVersionName = null,
  }) {
    return _then(_$VersionModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      minimumVersionName: null == minimumVersionName
          ? _value.minimumVersionName
          : minimumVersionName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersionModelImpl implements _VersionModel {
  const _$VersionModelImpl(
      {required this.name, required this.minimumVersionName});

  factory _$VersionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersionModelImplFromJson(json);

  @override
  final String name;
  @override
  final String minimumVersionName;

  @override
  String toString() {
    return 'VersionModel(name: $name, minimumVersionName: $minimumVersionName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.minimumVersionName, minimumVersionName) ||
                other.minimumVersionName == minimumVersionName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, minimumVersionName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionModelImplCopyWith<_$VersionModelImpl> get copyWith =>
      __$$VersionModelImplCopyWithImpl<_$VersionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersionModelImplToJson(
      this,
    );
  }
}

abstract class _VersionModel implements VersionModel {
  const factory _VersionModel(
      {required final String name,
      required final String minimumVersionName}) = _$VersionModelImpl;

  factory _VersionModel.fromJson(Map<String, dynamic> json) =
      _$VersionModelImpl.fromJson;

  @override
  String get name;
  @override
  String get minimumVersionName;
  @override
  @JsonKey(ignore: true)
  _$$VersionModelImplCopyWith<_$VersionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
