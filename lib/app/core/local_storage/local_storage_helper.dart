import 'package:get_storage/get_storage.dart';

const String sawOnBoardingKey = "sawOnBoardingKey";
abstract class LocalStorageHelper {
  Future<void> saveData<T>({required String key, required T data});

  Future<void> readData<T>({required String key});
  Future<void> removeData<T>({required String key});
Future<void> markOnboardingAsSeen();
Future<void> markOnboardingAsNotSeen();
Future<bool> didSeeOnBoarding();
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
  
  @override
  Future<void> markOnboardingAsNotSeen()async {
    await _getStorage.write(sawOnBoardingKey, false);
  }
  
  @override
  Future<void> markOnboardingAsSeen() async {
    await _getStorage.write(sawOnBoardingKey, true);
  }
  
  @override
  Future<bool> didSeeOnBoarding() async{
   return await _getStorage.read(sawOnBoardingKey) ?? false;
  }
}
