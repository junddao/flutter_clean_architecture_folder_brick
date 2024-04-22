import 'package:freezed_annotation/freezed_annotation.dart';

part 'version_model.freezed.dart';
part 'version_model.g.dart';

@freezed
class VersionModel with _$VersionModel {
  const factory VersionModel({
    required final String name,
    required final String minimumVersionName,
  }) = _VersionModel;

  factory VersionModel.fromJson(Map<String, dynamic> json) => _$VersionModelFromJson(json);
}
