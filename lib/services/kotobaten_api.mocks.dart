// Mocks generated by Mockito 5.0.16 from annotations
// in kotobaten/services/kotobaten_api.dart.
// Do not manually edit this file.

import 'dart:async' as _i10;

import 'package:kotobaten/models/search_result.dart' as _i5;
import 'package:kotobaten/models/slices/auth/auth_repository.dart' as _i2;
import 'package:kotobaten/models/slices/cards/card.dart' as _i7;
import 'package:kotobaten/models/slices/practice/impression.dart' as _i11;
import 'package:kotobaten/models/slices/user/user.dart' as _i4;
import 'package:kotobaten/models/slices/user/user_goals.dart' as _i8;
import 'package:kotobaten/models/slices/user/user_statistics.dart' as _i6;
import 'package:kotobaten/services/kotobaten_api.dart' as _i9;
import 'package:mockito/mockito.dart' as _i1;
import 'package:tuple/tuple.dart' as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeAuthRepository_0 extends _i1.Fake implements _i2.AuthRepository {}

class _FakeTuple2_1<T1, T2> extends _i1.Fake implements _i3.Tuple2<T1, T2> {}

class _FakeUserInitialized_2 extends _i1.Fake implements _i4.UserInitialized {}

class _FakeSearchResult_3 extends _i1.Fake implements _i5.SearchResult {}

class _FakeUserStatistics_4 extends _i1.Fake implements _i6.UserStatistics {}

class _FakeCardInitialized_5 extends _i1.Fake implements _i7.CardInitialized {}

class _FakeUserGoals_6 extends _i1.Fake implements _i8.UserGoals {}

/// A class which mocks [KotobatenApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockKotobatenApiService extends _i1.Mock
    implements _i9.KotobatenApiService {
  MockKotobatenApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.AuthRepository get authRepository =>
      (super.noSuchMethod(Invocation.getter(#authRepository),
          returnValue: _FakeAuthRepository_0()) as _i2.AuthRepository);
  @override
  _i10.Future<_i3.Tuple2<bool, String>> login(
          String? username, String? password) =>
      (super.noSuchMethod(Invocation.method(#login, [username, password]),
              returnValue: Future<_i3.Tuple2<bool, String>>.value(
                  _FakeTuple2_1<bool, String>()))
          as _i10.Future<_i3.Tuple2<bool, String>>);
  @override
  _i10.Future<_i3.Tuple2<bool, String>> signupAndLogin(
          String? username, String? password) =>
      (super.noSuchMethod(
              Invocation.method(#signupAndLogin, [username, password]),
              returnValue: Future<_i3.Tuple2<bool, String>>.value(
                  _FakeTuple2_1<bool, String>()))
          as _i10.Future<_i3.Tuple2<bool, String>>);
  @override
  _i10.Future<_i4.UserInitialized> getUser(
          {bool? updateRetentionBackstop = false}) =>
      (super.noSuchMethod(
              Invocation.method(#getUser, [],
                  {#updateRetentionBackstop: updateRetentionBackstop}),
              returnValue:
                  Future<_i4.UserInitialized>.value(_FakeUserInitialized_2()))
          as _i10.Future<_i4.UserInitialized>);
  @override
  _i10.Future<_i5.SearchResult> search(String? term) => (super.noSuchMethod(
          Invocation.method(#search, [term]),
          returnValue: Future<_i5.SearchResult>.value(_FakeSearchResult_3()))
      as _i10.Future<_i5.SearchResult>);
  @override
  _i10.Future<List<_i11.Impression>> getImpressions() => (super.noSuchMethod(
          Invocation.method(#getImpressions, []),
          returnValue: Future<List<_i11.Impression>>.value(<_i11.Impression>[]))
      as _i10.Future<List<_i11.Impression>>);
  @override
  _i10.Future<_i6.UserStatistics> postImpression(
          _i11.Impression? impression, bool? success) =>
      (super.noSuchMethod(
              Invocation.method(#postImpression, [impression, success]),
              returnValue:
                  Future<_i6.UserStatistics>.value(_FakeUserStatistics_4()))
          as _i10.Future<_i6.UserStatistics>);
  @override
  _i10.Future<_i7.CardInitialized> postCard(_i7.Card? card) =>
      (super.noSuchMethod(Invocation.method(#postCard, [card]),
              returnValue:
                  Future<_i7.CardInitialized>.value(_FakeCardInitialized_5()))
          as _i10.Future<_i7.CardInitialized>);
  @override
  _i10.Future<bool> deleteCard(int? cardId) =>
      (super.noSuchMethod(Invocation.method(#deleteCard, [cardId]),
          returnValue: Future<bool>.value(false)) as _i10.Future<bool>);
  @override
  _i10.Future<_i8.UserGoals> updateGoals(_i8.UserGoals? goals) =>
      (super.noSuchMethod(Invocation.method(#updateGoals, [goals]),
              returnValue: Future<_i8.UserGoals>.value(_FakeUserGoals_6()))
          as _i10.Future<_i8.UserGoals>);
  @override
  _i10.Future<List<_i7.CardInitialized>> getCards(int? page, int? pageSize) =>
      (super.noSuchMethod(Invocation.method(#getCards, [page, pageSize]),
              returnValue: Future<List<_i7.CardInitialized>>.value(
                  <_i7.CardInitialized>[]))
          as _i10.Future<List<_i7.CardInitialized>>);
  @override
  String toString() => super.toString();
}