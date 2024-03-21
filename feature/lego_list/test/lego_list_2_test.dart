// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:lego_list/src/domain/model/lego_set.dart';
import 'package:mocktail/mocktail.dart';

import './step/the_flow_is_running_with_configuration.dart';
import './step/i_see_widget.dart';
import './step/i_see_text.dart';
import './step/i_tap_text.dart';
import './step/navigation_to_universe_is_requested.dart';
import 'utils/mocks.dart';

void main() {
  testWidgets('''Lego world list is shown''', (tester) async {
    await theFlowIsRunningWithConfiguration(tester, 'list');
    await iSeeWidget(tester, ListView);
    await iSeeText(tester, 'Lego Star Wars');
    await iSeeText(tester, 'Lego Marvel');
    await iSeeText(tester, 'Lego Harry Potter');
    await iSeeText(tester, 'Lego DC');
  });
  testWidgets('''Lego world list is shown''', (tester) async {
    await theFlowIsRunningWithConfiguration(
      tester,
      'list',
      extraGetItConfigCallback: extraGetItConfigCallback,
    );
    await iSeeWidget(tester, ListView);
    await iSeeText(tester, 'My_Lego Star Wars');
    await iSeeText(tester, 'My_Lego Marvel');
    await iSeeText(tester, 'My_Lego Harry Potter');
    await iSeeText(tester, 'My_Lego DC');
  });
}

void extraGetItConfigCallback(GetIt getIt) {
  const dataList = [
    LegoSet('star_wars', 'My_Lego Star Wars'),
    LegoSet('marvel', 'My_Lego Marvel'),
    LegoSet('hp', 'My_Lego Harry Potter'),
    LegoSet('dc', 'My_Lego DC'),
  ];
  final mock = createLegoRepository();
  when(() => mock.getLegoSets()).thenReturn(dataList);
  getIt.registerSingleton(mock);
  getIt.registerFactory(() => mock);
}
