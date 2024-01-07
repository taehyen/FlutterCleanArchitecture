import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String gender,
    required Name name,
    required Location location,
    required String email,
    required Picture picture,
    required String phone,
    required String cell,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
class Name with _$Name {
  const factory Name({
    required String title,
    required String first,
    required String last,
  }) = _Name;

  factory Name.fromJson(Map<String, Object?> json) => _$NameFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required Street street,
    required String city,
    required String state,
    required String country,
    required int postcode,
    required Coordinates coordinates,
    required TimeZone timezone,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}

@freezed
class Street with _$Street {
  const factory Street({
    required int number,
    required String name,
  }) = _Street;

  factory Street.fromJson(Map<String, Object?> json) => _$StreetFromJson(json);
}

@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates({
    required String latitude,
    required String longitude,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, Object?> json) =>
      _$CoordinatesFromJson(json);
}

@freezed
class TimeZone with _$TimeZone {
  const factory TimeZone(
      {required String offset, required String description}) = _TimeZone;

  factory TimeZone.fromJson(Map<String, Object?> json) =>
      _$TimeZoneFromJson(json);
}

@freezed
class Picture with _$Picture {
  const factory Picture({
    required String large,
    required String medium,
    required String thumbnail,
  }) = _Picture;

  factory Picture.fromJson(Map<String, Object?> json) =>
      _$PictureFromJson(json);
}
