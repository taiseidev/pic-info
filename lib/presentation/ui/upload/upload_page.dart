import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../widget/button/common_button.dart';
import 'upload_view_logic.dart';
import 'upload_view_state.dart';

class UploadPage extends HookWidget {
  const UploadPage({super.key});

  @override
  Widget build(BuildContext context) {
    final store = useReducer<UploadViewState, BaseAction>(
      reducer,
      initialState: const UploadViewState(),
      initialAction: Init(),
    );

    useEffect(
      () {
        store.dispatch(ChangeButtonState());
        return null;
      },
      [store.state.image],
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          '写真をアップロード',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  store.dispatch(Upload(File('')));
                },
                child: const Text('テスト'),
              ),
              ElevatedButton(
                onPressed: () {
                  store.dispatch(Upload(null));
                },
                child: const Text('テスト'),
              ),
              const Spacer(),
              CommonButton(
                text: '写真をアップロード',
                backgroundColor: Colors.black,
                textColor: Colors.white,
                onTap: store.state.canTapButton
                    ? () {
                        // 写真保存処理を追加
                      }
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
