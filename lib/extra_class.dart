import 'package:freezed_annotation/freezed_annotation.dart';

part 'extra_class.freezed.dart';

@freezed
class ExtraClass with _$ExtraClass {
  const factory ExtraClass({required String content}) = _ExtraClass;
}
