import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:lego_list/src/flow/lego_list_flow.dart';

import '../utils/mocks.dart';

Future<void> theFlowIsRunningWithConfiguration(
    WidgetTester tester, String config,
    {Function(GetIt getIt)? extraGetItConfigCallback}) async {
  final getIt = GetIt.I;
  getIt.ignoreReassignmentError = true;
  await getIt.reset();
  extraGetItConfigCallback?.call(getIt);
  getIt.registerSingleton(createLegoListConfigurator(config == 'grid'));
  getIt.registerSingleton(createLegoListNavigation());

  await tester.pumpWidget(const MaterialApp(home: LegoListFlow()));
  await tester.pumpAndSettle();
}
