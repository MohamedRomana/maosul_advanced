// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    LoginResponseModel(
      key: (json['key'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      showImage: json['show_image'] as bool?,
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'msg': instance.msg,
      'show_image': instance.showImage,
      'data': instance.data,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
  id: (json['id'] as num?)?.toInt(),
  userType: json['user_type'] as String?,
  firstName: json['first_name'] as String?,
  email: json['email'] as String?,
  fullPhone: json['full_phone'] as String?,
  phone: json['phone'] as String?,
  phoneCode: json['phone_code'] as String?,
  address: json['address'] as String?,
  lat: (json['lat'] as num?)?.toDouble(),
  lng: (json['lng'] as num?)?.toDouble(),
  carType: json['car_type'] as String?,
  carTypeTitle: json['car_type_title'] as String?,
  isActive: json['is_active'] as bool?,
  isBlocked: json['is_blocked'] as bool?,
  lang: json['lang'] as String?,
  avatar: json['avatar'] as String?,
  idImage: json['id_image'] as String?,
  licenseImage: json['license_image'] as String?,
  ecommercyImage: json['ecommercy_image'] as String?,
  addresses: (json['addresses'] as List<dynamic>?)
      ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
  'id': instance.id,
  'user_type': instance.userType,
  'first_name': instance.firstName,
  'email': instance.email,
  'full_phone': instance.fullPhone,
  'phone': instance.phone,
  'phone_code': instance.phoneCode,
  'address': instance.address,
  'lat': instance.lat,
  'lng': instance.lng,
  'car_type': instance.carType,
  'car_type_title': instance.carTypeTitle,
  'is_active': instance.isActive,
  'is_blocked': instance.isBlocked,
  'lang': instance.lang,
  'avatar': instance.avatar,
  'id_image': instance.idImage,
  'license_image': instance.licenseImage,
  'ecommercy_image': instance.ecommercyImage,
  'addresses': instance.addresses,
};

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  address: json['address'] as String?,
  lat: (json['lat'] as num?)?.toDouble(),
  lng: (json['lng'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'address': instance.address,
  'lat': instance.lat,
  'lng': instance.lng,
};
