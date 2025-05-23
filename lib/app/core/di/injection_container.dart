import 'package:dio/dio.dart';
import 'package:fixithub/app/core/local_storage/local_storage_helper.dart';
import 'package:fixithub/app/core/network/api/api_consumer.dart';
import 'package:fixithub/app/core/network/api/clients/dio/dio_consumer.dart';
import 'package:fixithub/app/core/network/api/clients/dio/dio_factory.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class InjectionContainer {
  static Future<void> init() async {
    //Init local storage
    final getStorage = GetStorage();
    await getStorage.initStorage;

    //Init Local storage helper
    Get.lazyPut<LocalStorageHelper>(() => LocalStorageHelperImpl(
          getStorage: getStorage,
        ));

    //Init Dio factory
    Get.lazyPut(
      () => DioFactory(
        localStorage: Get.find(),
      ),
    );

    //Init dio instance
    final Dio dio = Get.find<DioFactory>().getDio();

    //Init Dio Consumer
    Get.lazyPut<ApiConsumer>(
      () => DioConsumer(
        dio: dio,
      ),
    );
  }

}
