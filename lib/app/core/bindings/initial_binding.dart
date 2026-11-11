import 'package:demogetx/app/core/network/api_client.dart';
import 'package:demogetx/app/data/datasources/remote_datasource.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiClient>(() => ApiClient());
    Get.lazyPut<RemoteDatasource>(() => RemoteDatasource(Get.find()));
  }
}
