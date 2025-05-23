import 'package:get_storage/get_storage.dart';

abstract class LocalStorageHelper {
  Future<void> saveData<T>({required String key, required T data});

  Future<void> readData<T>({required String key});
  Future<void> removeData<T>({required String key});

  Future<void> clearAll();
}

class LocalStorageHelperImpl implements LocalStorageHelper {
  final GetStorage _getStorage;

  LocalStorageHelperImpl({required GetStorage getStorage})
      : _getStorage = getStorage;

  @override
  Future<void> clearAll() async {
    await _getStorage.erase();
  }

  @override
  Future<void> readData<T>({required String key}) async {
    await _getStorage.read(key);
  }

  @override
  Future<void> removeData<T>({required String key}) async {
    await _getStorage.remove(key);
  }

  @override
  Future<void> saveData<T>({required String key, required T data}) async {
    await _getStorage.write(key, data);
  }
}
