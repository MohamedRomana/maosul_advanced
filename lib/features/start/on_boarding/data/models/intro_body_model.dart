import 'package:freezed_annotation/freezed_annotation.dart';
part 'intro_body_model.g.dart';

@JsonSerializable()
class IntroBodyModel {
  final String lang;

  const IntroBodyModel({
    required this.lang,
  });

  factory IntroBodyModel.fromJson(Map<String, dynamic> json) =>
      _$IntroBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$IntroBodyModelToJson(this);
}
