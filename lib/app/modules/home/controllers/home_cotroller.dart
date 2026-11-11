import 'package:demogetx/app/data/datasources/remote_datasource.dart';
import 'package:demogetx/app/data/models/result/result.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController(this._datasource);

  final RemoteDatasource _datasource;
  // Simplify to find
  static HomeController get to => Get.find<HomeController>();
  // .obs makes it reactive
  RxBool isLoading = false.obs;
  RxString errorMessage = ''.obs;
  final characters = <Result>[].obs;

  // init
  @override
  void onInit() {
    super.onInit();
    loadCharacters();
  }

  Future<void> loadCharacters() async {
    try {
      isLoading(true);
      errorMessage('');
      final data = await _datasource.getCharacters();
      characters.assignAll(data.results);
    } on DioException catch (e) {
      errorMessage(e.message ?? 'Error de red');
    } finally {
      isLoading(false);
    }
  }
}
