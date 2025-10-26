import 'package:get_storage/get_storage.dart';

class ANBLocalStorage{
  static final ANBLocalStorage _instance = ANBLocalStorage._internal();

  factory ANBLocalStorage(){
    return _instance;
  }
  ANBLocalStorage._internal();

  final _storage = GetStorage();

  // Generic method to sate data
  Future<void> saveData<T> (String key, T value)async{
    await _storage.write(key, value);
  }

  // Generic method to read data
  T? readData<T> (String key){
    return _storage.read<T>(key);
  }

  // Generic method to removeData
  Future<void> removeData(String key)async{
    await _storage.remove(key);
  }

  // Clear all data in storage
  Future<void> clear() async{
    await _storage.erase();
  }
}