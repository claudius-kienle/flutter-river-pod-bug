// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extra_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExtraClass {
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExtraClassCopyWith<ExtraClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraClassCopyWith<$Res> {
  factory $ExtraClassCopyWith(
          ExtraClass value, $Res Function(ExtraClass) then) =
      _$ExtraClassCopyWithImpl<$Res, ExtraClass>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class _$ExtraClassCopyWithImpl<$Res, $Val extends ExtraClass>
    implements $ExtraClassCopyWith<$Res> {
  _$ExtraClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExtraClassImplCopyWith<$Res>
    implements $ExtraClassCopyWith<$Res> {
  factory _$$ExtraClassImplCopyWith(
          _$ExtraClassImpl value, $Res Function(_$ExtraClassImpl) then) =
      __$$ExtraClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$ExtraClassImplCopyWithImpl<$Res>
    extends _$ExtraClassCopyWithImpl<$Res, _$ExtraClassImpl>
    implements _$$ExtraClassImplCopyWith<$Res> {
  __$$ExtraClassImplCopyWithImpl(
      _$ExtraClassImpl _value, $Res Function(_$ExtraClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$ExtraClassImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExtraClassImpl implements _ExtraClass {
  const _$ExtraClassImpl({required this.content});

  @override
  final String content;

  @override
  String toString() {
    return 'ExtraClass(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExtraClassImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExtraClassImplCopyWith<_$ExtraClassImpl> get copyWith =>
      __$$ExtraClassImplCopyWithImpl<_$ExtraClassImpl>(this, _$identity);
}

abstract class _ExtraClass implements ExtraClass {
  const factory _ExtraClass({required final String content}) = _$ExtraClassImpl;

  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$ExtraClassImplCopyWith<_$ExtraClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
