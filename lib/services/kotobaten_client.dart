import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:kotobaten/models/app_configuration.dart';
import 'package:kotobaten/services/app_configuration.dart';

final kotobatenClientProvider =
    Provider((ref) => KotobatenClient(ref.watch(appConfigurationProvider)));

class KotobatenClient extends BaseClient {
  final _httpClient = Client();
  final AppConfiguration _configuration;

  KotobatenClient(this._configuration);

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    final defaultHeaders = <String, String>{
      'x-api-version': _configuration.apiVersion
    };

    request.headers.addAll(defaultHeaders);
    return _httpClient.send(request);
  }
}
