import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension AsyncValueX<T> on AsyncValue<T> {
  /// guard関数の拡張版
  /// 例外時に前回のデータを持たせてエラーを返す
  Future<AsyncValue<T>> guardPlus(Future<T> Function() future) async {
    try {
      return AsyncValue.data(await future());
    } on Exception catch (err, stack) {
      // 前回のデータを持たせてエラーを返す
      return AsyncValue<T>.error(err, stack).copyWithPrevious(this);
    }
  }

  /// when関数の拡張版
  ///
  /// [skipErrorOnHasValue]がtrueの時はデータがある場合のエラーをスキップする
  /// ページングの2ページ目以降でエラー時に、取得ずみデータを表示する場合などに使用する
  R whenPlus<R>({
    // ignore: avoid_positional_boolean_parameters
    required R Function(T data, bool hasError) data,
    required R Function(Object error, StackTrace stackTrace) error,
    required R Function() loading,
    bool skipLoadingOnReload = false,
    bool skipLoadingOnRefresh = true,
    bool skipError = false,
    bool skipErrorOnHasValue = false,
  }) {
    if (skipErrorOnHasValue) {
      if (hasValue && hasError) {
        return data(requireValue, true);
      }
    }

    return when(
      skipLoadingOnReload: skipLoadingOnReload,
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      skipError: skipError,
      data: (d) => data(d, hasError),
      error: error,
      loading: loading,
    );
  }

  /// エラー時にスナックバーを表示する
  void showSnackbarOnError(
    BuildContext context, {
    String defaultMessage = 'エラーが発生しました',
  }) {
    if (!isLoading && hasError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            error!.toString(),
          ),
        ),
      );
    }
  }
}
