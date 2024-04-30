import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:slash/data/repo.dart';
part 'search_food.g.dart';

@riverpod
class SearchFoodController extends _$SearchFoodController {
  @override
  FutureOr<List<String>> build({required String keyword}) async {
    final repo = ref.read(foodRepProvider);
    return ref.makeRequestWithDebounceAndCancel(
        request: () => repo.searchFood(keyword), keyword: keyword);
  }
}

extension DebounceAndCancelExtension on Ref {
  FutureOr<T> makeRequestWithDebounceAndCancel<T>(
      {required Future<T> Function() request,
      Duration? duration,
      String? keyword}) async {
    var didDispose = false;
    onDispose(() => didDispose = true);
    debugPrint('start debounce $keyword');
    await Future<void>.delayed(duration ?? const Duration(milliseconds: 750));
    if (didDispose) {
      throw Exception('Cancelled');
    }
    debugPrint('start searching  $keyword ');
    return request();
  }
}
