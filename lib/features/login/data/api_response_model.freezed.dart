// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiResponseModel _$ApiResponseModelFromJson(Map<String, dynamic> json) {
  return _ApiResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ApiResponseModel {
  ApiStatusCode get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseModelCopyWith<ApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseModelCopyWith<$Res> {
  factory $ApiResponseModelCopyWith(
          ApiResponseModel value, $Res Function(ApiResponseModel) then) =
      _$ApiResponseModelCopyWithImpl<$Res, ApiResponseModel>;
  @useResult
  $Res call({ApiStatusCode status});

  $ApiStatusCodeCopyWith<$Res> get status;
}

/// @nodoc
class _$ApiResponseModelCopyWithImpl<$Res, $Val extends ApiResponseModel>
    implements $ApiResponseModelCopyWith<$Res> {
  _$ApiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatusCode,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCodeCopyWith<$Res> get status {
    return $ApiStatusCodeCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiResponseModelImplCopyWith<$Res>
    implements $ApiResponseModelCopyWith<$Res> {
  factory _$$ApiResponseModelImplCopyWith(_$ApiResponseModelImpl value,
          $Res Function(_$ApiResponseModelImpl) then) =
      __$$ApiResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatusCode status});

  @override
  $ApiStatusCodeCopyWith<$Res> get status;
}

/// @nodoc
class __$$ApiResponseModelImplCopyWithImpl<$Res>
    extends _$ApiResponseModelCopyWithImpl<$Res, _$ApiResponseModelImpl>
    implements _$$ApiResponseModelImplCopyWith<$Res> {
  __$$ApiResponseModelImplCopyWithImpl(_$ApiResponseModelImpl _value,
      $Res Function(_$ApiResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$ApiResponseModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatusCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiResponseModelImpl implements _ApiResponseModel {
  const _$ApiResponseModelImpl({required this.status});

  factory _$ApiResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiResponseModelImplFromJson(json);

  @override
  final ApiStatusCode status;

  @override
  String toString() {
    return 'ApiResponseModel(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseModelImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseModelImplCopyWith<_$ApiResponseModelImpl> get copyWith =>
      __$$ApiResponseModelImplCopyWithImpl<_$ApiResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ApiResponseModel implements ApiResponseModel {
  const factory _ApiResponseModel({required final ApiStatusCode status}) =
      _$ApiResponseModelImpl;

  factory _ApiResponseModel.fromJson(Map<String, dynamic> json) =
      _$ApiResponseModelImpl.fromJson;

  @override
  ApiStatusCode get status;
  @override
  @JsonKey(ignore: true)
  _$$ApiResponseModelImplCopyWith<_$ApiResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiStatusCode _$ApiStatusCodeFromJson(Map<String, dynamic> json) {
  return _ApiStatusCode.fromJson(json);
}

/// @nodoc
mixin _$ApiStatusCode {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiStatusCodeCopyWith<ApiStatusCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiStatusCodeCopyWith<$Res> {
  factory $ApiStatusCodeCopyWith(
          ApiStatusCode value, $Res Function(ApiStatusCode) then) =
      _$ApiStatusCodeCopyWithImpl<$Res, ApiStatusCode>;
  @useResult
  $Res call({int code, String message});
}

/// @nodoc
class _$ApiStatusCodeCopyWithImpl<$Res, $Val extends ApiStatusCode>
    implements $ApiStatusCodeCopyWith<$Res> {
  _$ApiStatusCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiStatusCodeImplCopyWith<$Res>
    implements $ApiStatusCodeCopyWith<$Res> {
  factory _$$ApiStatusCodeImplCopyWith(
          _$ApiStatusCodeImpl value, $Res Function(_$ApiStatusCodeImpl) then) =
      __$$ApiStatusCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message});
}

/// @nodoc
class __$$ApiStatusCodeImplCopyWithImpl<$Res>
    extends _$ApiStatusCodeCopyWithImpl<$Res, _$ApiStatusCodeImpl>
    implements _$$ApiStatusCodeImplCopyWith<$Res> {
  __$$ApiStatusCodeImplCopyWithImpl(
      _$ApiStatusCodeImpl _value, $Res Function(_$ApiStatusCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$ApiStatusCodeImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiStatusCodeImpl implements _ApiStatusCode {
  const _$ApiStatusCodeImpl({this.code = 400, this.message = "N/A"});

  factory _$ApiStatusCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiStatusCodeImplFromJson(json);

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ApiStatusCode(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiStatusCodeImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiStatusCodeImplCopyWith<_$ApiStatusCodeImpl> get copyWith =>
      __$$ApiStatusCodeImplCopyWithImpl<_$ApiStatusCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiStatusCodeImplToJson(
      this,
    );
  }
}

abstract class _ApiStatusCode implements ApiStatusCode {
  const factory _ApiStatusCode({final int code, final String message}) =
      _$ApiStatusCodeImpl;

  factory _ApiStatusCode.fromJson(Map<String, dynamic> json) =
      _$ApiStatusCodeImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ApiStatusCodeImplCopyWith<_$ApiStatusCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
