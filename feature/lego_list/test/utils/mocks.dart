import 'package:lego_list/src/configurator/configurator.dart';
import 'package:lego_list/src/domain/repository/lego_repository.dart';
import 'package:lego_list/src/navigation/navigation.dart';
import 'package:mocktail/mocktail.dart';

class MockLegoListConfigurator extends Mock implements LegoListConfigurator {}

LegoListConfigurator createLegoListConfigurator(bool isGrid) {
  final mock = MockLegoListConfigurator();
  when(() => mock.gridRepresentation).thenReturn(isGrid);
  return mock;
}

class MockLegoListNavigation extends Mock implements LegoListNavigation {}

LegoListNavigation createLegoListNavigation() => MockLegoListNavigation();

class MockLegoRepository extends Mock implements LegoRepository {}

LegoRepository createLegoRepository() => MockLegoRepository();
