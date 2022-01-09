// Mocks generated by Mockito 5.0.16 from annotations
// in kotobaten/models/slices/user/user_service.dart.
// Do not manually edit this file.

import 'dart:async' as _i9;

import 'package:kotobaten/models/slices/user/user.dart' as _i5;
import 'package:kotobaten/models/slices/user/user_goals.dart' as _i6;
import 'package:kotobaten/models/slices/user/user_repository.dart' as _i3;
import 'package:kotobaten/models/slices/user/user_service.dart' as _i8;
import 'package:kotobaten/models/slices/user/user_statistics.dart' as _i7;
import 'package:kotobaten/services/analytics_service.dart' as _i4;
import 'package:kotobaten/services/kotobaten_api.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeKotobatenApiService_0 extends _i1.Fake
    implements _i2.KotobatenApiService {}

class _FakeUserRepository_1 extends _i1.Fake implements _i3.UserRepository {}

class _FakeAnalyticsService_2 extends _i1.Fake implements _i4.AnalyticsService {
}

class _FakeUserInitialized_3 extends _i1.Fake implements _i5.UserInitialized {}

class _FakeUserGoals_4 extends _i1.Fake implements _i6.UserGoals {}

class _FakeUserStatistics_5 extends _i1.Fake implements _i7.UserStatistics {}

/// A class which mocks [UserService].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserService extends _i1.Mock implements _i8.UserService {
  MockUserService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.KotobatenApiService get apiService => (super.noSuchMethod(
      Invocation.getter(#apiService),
      returnValue: _FakeKotobatenApiService_0()) as _i2.KotobatenApiService);
  @override
  _i3.UserRepository get userRepository =>
      (super.noSuchMethod(Invocation.getter(#userRepository),
          returnValue: _FakeUserRepository_1()) as _i3.UserRepository);
  @override
  _i4.AnalyticsService get analyticsService =>
      (super.noSuchMethod(Invocation.getter(#analyticsService),
          returnValue: _FakeAnalyticsService_2()) as _i4.AnalyticsService);
  @override
  _i9.Future<dynamic> refreshUser({bool? updateRetentionBackstop = false}) =>
      (super.noSuchMethod(
          Invocation.method(#refreshUser, [],
              {#updateRetentionBackstop: updateRetentionBackstop}),
          returnValue: Future<dynamic>.value()) as _i9.Future<dynamic>);
  @override
  _i5.UserInitialized setUser(_i5.UserInitialized? user) =>
      (super.noSuchMethod(Invocation.method(#setUser, [user]),
          returnValue: _FakeUserInitialized_3()) as _i5.UserInitialized);
  @override
  _i9.Future<_i6.UserGoals> updateGoals(_i6.UserGoals? goals) =>
      (super.noSuchMethod(Invocation.method(#updateGoals, [goals]),
              returnValue: Future<_i6.UserGoals>.value(_FakeUserGoals_4()))
          as _i9.Future<_i6.UserGoals>);
  @override
  _i7.UserStatistics updateStatistics(_i7.UserStatistics? stats) =>
      (super.noSuchMethod(Invocation.method(#updateStatistics, [stats]),
          returnValue: _FakeUserStatistics_5()) as _i7.UserStatistics);
  @override
  String toString() => super.toString();
}
