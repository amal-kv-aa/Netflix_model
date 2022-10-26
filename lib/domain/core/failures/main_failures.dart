import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failures.freezed.dart';
@freezed
class Mainfailures with _$Mainfailures{
  const factory Mainfailures.clinetFailures() = _clinetFailures;
  const factory Mainfailures.serverFailures() = _serverFailures;
}