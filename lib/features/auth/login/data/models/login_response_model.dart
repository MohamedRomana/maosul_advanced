import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  final int? key;
  final String? msg;
  @JsonKey(name: 'show_image')
  final bool? showImage;
  final UserData? data;

  LoginResponseModel({this.key, this.msg, this.showImage, this.data});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@JsonSerializable()
class UserData {
  final int? id;
  @JsonKey(name: 'user_type')
  final String? userType;
  @JsonKey(name: 'first_name')
  final String? firstName;
  final String? email;
  @JsonKey(name: 'full_phone')
  final String? fullPhone;
  final String? phone;
  @JsonKey(name: 'phone_code')
  final String? phoneCode;
  final String? address;
  final double? lat;
  final double? lng;
  @JsonKey(name: 'car_type')
  final String? carType;
  @JsonKey(name: 'car_type_title')
  final String? carTypeTitle;
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @JsonKey(name: 'is_blocked')
  final bool? isBlocked;
  final String? lang;
  final String? avatar;
  @JsonKey(name: 'id_image')
  final String? idImage;
  @JsonKey(name: 'license_image')
  final String? licenseImage;
  @JsonKey(name: 'ecommercy_image')
  final String? ecommercyImage;
  final List<Address>? addresses;

  UserData({
    this.id,
    this.userType,
    this.firstName,
    this.email,
    this.fullPhone,
    this.phone,
    this.phoneCode,
    this.address,
    this.lat,
    this.lng,
    this.carType,
    this.carTypeTitle,
    this.isActive,
    this.isBlocked,
    this.lang,
    this.avatar,
    this.idImage,
    this.licenseImage,
    this.ecommercyImage,
    this.addresses,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}

@JsonSerializable()
class Address {
  final int? id;
  final String? title;
  final String? address;
  final double? lat;
  final double? lng;

  Address({this.id, this.title, this.address, this.lat, this.lng});

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
