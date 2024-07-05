import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response_model.freezed.dart';
part 'api_response_model.g.dart';

@freezed
class ApiResponseModel with _$ApiResponseModel {
  const factory ApiResponseModel({
    required ApiStatusCode status,
  }) = _ApiResponseModel;

  factory ApiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseModelFromJson(json);
}

@freezed
class ApiStatusCode with _$ApiStatusCode {
  const factory ApiStatusCode({
    @Default(400) int code,
    @Default("N/A") String message,
  }) = _ApiStatusCode;

  factory ApiStatusCode.fromJson(Map<String, dynamic> json) =>
      _$ApiStatusCodeFromJson(json);
}
