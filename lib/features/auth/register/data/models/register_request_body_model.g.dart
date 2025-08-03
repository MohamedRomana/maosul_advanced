// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestBodyModel _$RegisterRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => RegisterRequestBodyModel(
  lang: json['lang'] as String,
  userType: json['user_type'] as String,
  firstName: json['first_name'] as String,
  email: json['email'] as String,
  phoneCode: json['phone_code'] as String,
  phone: json['phone'] as String,
  password: json['password'] as String,
  address: json['address'] as String,
  lat: json['lat'] as String,
  lng: json['lng'] as String,
);

Map<String, dynamic> _$RegisterRequestBodyModelToJson(
  RegisterRequestBodyModel instance,
) => <String, dynamic>{
  'lang': instance.lang,
  'user_type': instance.userType,
  'first_name': instance.firstName,
  'email': instance.email,
  'phone_code': instance.phoneCode,
  'phone': instance.phone,
  'password': instance.password,
  'address': instance.address,
  'lat': instance.lat,
  'lng': instance.lng,
};
