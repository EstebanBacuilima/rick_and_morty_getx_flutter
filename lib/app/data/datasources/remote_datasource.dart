import 'package:demogetx/app/core/network/api_client.dart';
import 'package:demogetx/app/data/models/data/data.dart';

class RemoteDatasource {
  RemoteDatasource(this._apiClient);
  final ApiClient _apiClient;

  Future<Data> getCharacters() async {
    final response = await _apiClient.dio.get('/character');
    return Data.fromJson(response.data);
  }
}