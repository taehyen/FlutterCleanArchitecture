import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  Result._();
  factory Result.success(T data) = _Success;
  factory Result.error(String message) = _Error;

  bool get isSuccess => this is _Success;
  bool get isError => this is _Error;
}
