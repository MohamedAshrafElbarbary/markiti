import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:markiti_app/core/api/dio_consumer.dart';

final getIt = GetIt.instance;

void servserLocator() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<DioConsumer>(DioConsumer(dio: getIt<Dio>()));
}
