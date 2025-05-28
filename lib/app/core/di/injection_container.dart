import 'package:dio/dio.dart';
import 'package:fixithub/app/core/local_storage/local_storage_helper.dart';
import 'package:fixithub/app/core/network/api/api_consumer.dart';
import 'package:fixithub/app/core/network/api/clients/dio/dio_consumer.dart';
import 'package:fixithub/app/core/network/api/clients/dio/dio_factory.dart';
import 'package:fixithub/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:fixithub/features/auth/data/repository/auth_repository_impl.dart';
import 'package:fixithub/features/auth/domain/repository/auth_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class InjectionContainer {
  static Future<void> init() async {
    //Init local storage
    final getStorage = GetStorage();
    await getStorage.initStorage;

    //Init Local storage helper
    Get.put<LocalStorageHelper>( LocalStorageHelperImpl(
          getStorage: getStorage,
        ),permanent: true,);

    //Init Dio factory
    Get.put(
DioFactory(
        localStorage: Get.find(),
      ),
      permanent: true,
    );

    //Init dio instance
    final Dio dio = Get.find<DioFactory>().getDio();

    //Init Dio Consumer
    Get.put<ApiConsumer>(
       DioConsumer(
        dio: dio,
      ),
      permanent: true,
    );

    //! should modifiy this to auth bindings

    // Get.lazyPut<AuthRemoteDataSource>(
    //   () => AuthRemoteDataSourceImpl(
    //     apiConsumer: Get.find(),
    //   ),
    // );

    // Get.lazyPut<AuthRepository>(
    //   () => AuthRepositoryImpl(
    //     authRemoteDataSource: Get.find(),
    //   ),
    // );
  }
}
