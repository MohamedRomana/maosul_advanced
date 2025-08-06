import 'package:freezed_annotation/freezed_annotation.dart';
part 'stores_body_model.g.dart';

@JsonSerializable()
class StoresBodyModel {
  final String lang;
  @JsonKey(name: 'user_id')
  final String userId;
  final String lat;
  final String lng;

  StoresBodyModel(
    {
    required this.lat,
    required this.lng,
    required this.lang,
    required this.userId,
  });

  factory StoresBodyModel.fromJson(Map<String, dynamic> json) =>
      _$StoresBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$StoresBodyModelToJson(this);
}
