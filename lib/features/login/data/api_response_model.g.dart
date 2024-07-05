// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseModelImpl _$$ApiResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiResponseModelImpl(
      status: ApiStatusCode.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiResponseModelImplToJson(
        _$ApiResponseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_$ApiStatusCodeImpl _$$ApiStatusCodeImplFromJson(Map<String, dynamic> json) =>
    _$ApiStatusCodeImpl(
      code: (json['code'] as num?)?.toInt() ?? 400,
      message: json['message'] as String? ?? "N/A",
    );

Map<String, dynamic> _$$ApiStatusCodeImplToJson(_$ApiStatusCodeImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
