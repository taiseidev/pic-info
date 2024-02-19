import 'dart:io';

import 'upload_view_state.dart';

sealed class BaseAction {}

class Upload extends BaseAction {
  Upload(this.image);
  final File? image;
}

class ChangeButtonState extends BaseAction {}

class Init extends BaseAction {}

UploadViewState reducer(UploadViewState state, BaseAction action) =>
    switch (action) {
      Upload() => state.copyWith(image: action.image),
      ChangeButtonState() => state.copyWith(canTapButton: state.image != null),
      Init() => state,
    };
