// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UploadViewState {
  bool get canTapButton => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadViewStateCopyWith<UploadViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadViewStateCopyWith<$Res> {
  factory $UploadViewStateCopyWith(
          UploadViewState value, $Res Function(UploadViewState) then) =
      _$UploadViewStateCopyWithImpl<$Res, UploadViewState>;
  @useResult
  $Res call({bool canTapButton, File? image});
}

/// @nodoc
class _$UploadViewStateCopyWithImpl<$Res, $Val extends UploadViewState>
    implements $UploadViewStateCopyWith<$Res> {
  _$UploadViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canTapButton = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      canTapButton: null == canTapButton
          ? _value.canTapButton
          : canTapButton // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadViewStateImplCopyWith<$Res>
    implements $UploadViewStateCopyWith<$Res> {
  factory _$$UploadViewStateImplCopyWith(_$UploadViewStateImpl value,
          $Res Function(_$UploadViewStateImpl) then) =
      __$$UploadViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool canTapButton, File? image});
}

/// @nodoc
class __$$UploadViewStateImplCopyWithImpl<$Res>
    extends _$UploadViewStateCopyWithImpl<$Res, _$UploadViewStateImpl>
    implements _$$UploadViewStateImplCopyWith<$Res> {
  __$$UploadViewStateImplCopyWithImpl(
      _$UploadViewStateImpl _value, $Res Function(_$UploadViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canTapButton = null,
    Object? image = freezed,
  }) {
    return _then(_$UploadViewStateImpl(
      canTapButton: null == canTapButton
          ? _value.canTapButton
          : canTapButton // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$UploadViewStateImpl implements _UploadViewState {
  const _$UploadViewStateImpl({this.canTapButton = false, this.image});

  @override
  @JsonKey()
  final bool canTapButton;
  @override
  final File? image;

  @override
  String toString() {
    return 'UploadViewState(canTapButton: $canTapButton, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadViewStateImpl &&
            (identical(other.canTapButton, canTapButton) ||
                other.canTapButton == canTapButton) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, canTapButton, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadViewStateImplCopyWith<_$UploadViewStateImpl> get copyWith =>
      __$$UploadViewStateImplCopyWithImpl<_$UploadViewStateImpl>(
          this, _$identity);
}

abstract class _UploadViewState implements UploadViewState {
  const factory _UploadViewState({final bool canTapButton, final File? image}) =
      _$UploadViewStateImpl;

  @override
  bool get canTapButton;
  @override
  File? get image;
  @override
  @JsonKey(ignore: true)
  _$$UploadViewStateImplCopyWith<_$UploadViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
