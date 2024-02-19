import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_view_state.freezed.dart';

@freezed
class UploadViewState with _$UploadViewState {
  const factory UploadViewState({
    @Default(false) bool canTapButton,
    File? image,
  }) = _UploadViewState;
}
