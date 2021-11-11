import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kotobaten/services/authentication.dart';
import 'package:kotobaten/services/kotobaten_api.dart';

final kotobatenApiServiceProvider = Provider((ref) => KotobatenApiService());
final authenticationServiceProvider = Provider((ref) => AuthenticationService());