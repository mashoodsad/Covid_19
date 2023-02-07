import 'package:ftips_bloc_fetch_api/Covid_19.dart';
import 'api_provider.dart';

class ApiRepository {
  final _provider = ApiProvider();

  Future<Covid_19> fetchCovidList() {
    return _provider.fetchCovidList();
  }
}

class NetworkError extends Error {}