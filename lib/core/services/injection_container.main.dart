part of 'injection_container.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  final box = await Hive.openBox(DatabaseKeys.databaseName);
  sl
    ..registerLazySingleton(() => box)
    ..registerLazySingleton(() => CacheHelper(sl()));
}
