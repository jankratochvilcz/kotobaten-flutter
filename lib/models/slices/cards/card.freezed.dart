// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Card _$CardFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return CardInitialized.fromJson(json);
    case 'newCard':
      return CardNew.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Card',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Card {
  String get sense => throw _privateConstructorUsedError;
  @JsonKey(fromJson: toNonEmptyString)
  String? get kana => throw _privateConstructorUsedError;
  @JsonKey(fromJson: toNonEmptyString)
  String? get kanji => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  CardType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int? id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type,
            double? senseRetention,
            double? kanaRetention)
        $default, {
    required TResult Function(String sense, String? kana, String? kanji,
            String? note, DateTime created, CardType type)
        newCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int? id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type,
            double? senseRetention,
            double? kanaRetention)?
        $default, {
    TResult? Function(String sense, String? kana, String? kanji, String? note,
            DateTime created, CardType type)?
        newCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int? id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type,
            double? senseRetention,
            double? kanaRetention)?
        $default, {
    TResult Function(String sense, String? kana, String? kanji, String? note,
            DateTime created, CardType type)?
        newCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CardInitialized value) $default, {
    required TResult Function(CardNew value) newCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CardInitialized value)? $default, {
    TResult? Function(CardNew value)? newCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CardInitialized value)? $default, {
    TResult Function(CardNew value)? newCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Card to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res, Card>;
  @useResult
  $Res call(
      {String sense,
      @JsonKey(fromJson: toNonEmptyString) String? kana,
      @JsonKey(fromJson: toNonEmptyString) String? kanji,
      DateTime created,
      String? note,
      CardType type});
}

/// @nodoc
class _$CardCopyWithImpl<$Res, $Val extends Card>
    implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sense = null,
    Object? kana = freezed,
    Object? kanji = freezed,
    Object? created = null,
    Object? note = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      sense: null == sense
          ? _value.sense
          : sense // ignore: cast_nullable_to_non_nullable
              as String,
      kana: freezed == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String?,
      kanji: freezed == kanji
          ? _value.kanji
          : kanji // ignore: cast_nullable_to_non_nullable
              as String?,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CardType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardInitializedImplCopyWith<$Res>
    implements $CardCopyWith<$Res> {
  factory _$$CardInitializedImplCopyWith(_$CardInitializedImpl value,
          $Res Function(_$CardInitializedImpl) then) =
      __$$CardInitializedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String sense,
      @JsonKey(fromJson: toNonEmptyString) String? kana,
      @JsonKey(fromJson: toNonEmptyString) String? kanji,
      DateTime created,
      String? note,
      CardType type,
      double? senseRetention,
      double? kanaRetention});
}

/// @nodoc
class __$$CardInitializedImplCopyWithImpl<$Res>
    extends _$CardCopyWithImpl<$Res, _$CardInitializedImpl>
    implements _$$CardInitializedImplCopyWith<$Res> {
  __$$CardInitializedImplCopyWithImpl(
      _$CardInitializedImpl _value, $Res Function(_$CardInitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sense = null,
    Object? kana = freezed,
    Object? kanji = freezed,
    Object? created = null,
    Object? note = freezed,
    Object? type = null,
    Object? senseRetention = freezed,
    Object? kanaRetention = freezed,
  }) {
    return _then(_$CardInitializedImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      null == sense
          ? _value.sense
          : sense // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == kanji
          ? _value.kanji
          : kanji // ignore: cast_nullable_to_non_nullable
              as String?,
      null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CardType,
      freezed == senseRetention
          ? _value.senseRetention
          : senseRetention // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == kanaRetention
          ? _value.kanaRetention
          : kanaRetention // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CardInitializedImpl implements CardInitialized {
  _$CardInitializedImpl(
      this.id,
      this.sense,
      @JsonKey(fromJson: toNonEmptyString) this.kana,
      @JsonKey(fromJson: toNonEmptyString) this.kanji,
      this.created,
      this.note,
      this.type,
      this.senseRetention,
      this.kanaRetention,
      {final String? $type})
      : $type = $type ?? 'default';

  factory _$CardInitializedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardInitializedImplFromJson(json);

  @override
  final int? id;
  @override
  final String sense;
  @override
  @JsonKey(fromJson: toNonEmptyString)
  final String? kana;
  @override
  @JsonKey(fromJson: toNonEmptyString)
  final String? kanji;
  @override
  final DateTime created;
  @override
  final String? note;
  @override
  final CardType type;
  @override
  final double? senseRetention;
  @override
  final double? kanaRetention;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Card(id: $id, sense: $sense, kana: $kana, kanji: $kanji, created: $created, note: $note, type: $type, senseRetention: $senseRetention, kanaRetention: $kanaRetention)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardInitializedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sense, sense) || other.sense == sense) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            (identical(other.kanji, kanji) || other.kanji == kanji) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.senseRetention, senseRetention) ||
                other.senseRetention == senseRetention) &&
            (identical(other.kanaRetention, kanaRetention) ||
                other.kanaRetention == kanaRetention));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, sense, kana, kanji, created,
      note, type, senseRetention, kanaRetention);

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardInitializedImplCopyWith<_$CardInitializedImpl> get copyWith =>
      __$$CardInitializedImplCopyWithImpl<_$CardInitializedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int? id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type,
            double? senseRetention,
            double? kanaRetention)
        $default, {
    required TResult Function(String sense, String? kana, String? kanji,
            String? note, DateTime created, CardType type)
        newCard,
  }) {
    return $default(id, sense, kana, kanji, created, note, type, senseRetention,
        kanaRetention);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int? id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type,
            double? senseRetention,
            double? kanaRetention)?
        $default, {
    TResult? Function(String sense, String? kana, String? kanji, String? note,
            DateTime created, CardType type)?
        newCard,
  }) {
    return $default?.call(id, sense, kana, kanji, created, note, type,
        senseRetention, kanaRetention);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int? id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type,
            double? senseRetention,
            double? kanaRetention)?
        $default, {
    TResult Function(String sense, String? kana, String? kanji, String? note,
            DateTime created, CardType type)?
        newCard,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, sense, kana, kanji, created, note, type,
          senseRetention, kanaRetention);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CardInitialized value) $default, {
    required TResult Function(CardNew value) newCard,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CardInitialized value)? $default, {
    TResult? Function(CardNew value)? newCard,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CardInitialized value)? $default, {
    TResult Function(CardNew value)? newCard,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CardInitializedImplToJson(
      this,
    );
  }
}

abstract class CardInitialized implements Card {
  factory CardInitialized(
      final int? id,
      final String sense,
      @JsonKey(fromJson: toNonEmptyString) final String? kana,
      @JsonKey(fromJson: toNonEmptyString) final String? kanji,
      final DateTime created,
      final String? note,
      final CardType type,
      final double? senseRetention,
      final double? kanaRetention) = _$CardInitializedImpl;

  factory CardInitialized.fromJson(Map<String, dynamic> json) =
      _$CardInitializedImpl.fromJson;

  int? get id;
  @override
  String get sense;
  @override
  @JsonKey(fromJson: toNonEmptyString)
  String? get kana;
  @override
  @JsonKey(fromJson: toNonEmptyString)
  String? get kanji;
  @override
  DateTime get created;
  @override
  String? get note;
  @override
  CardType get type;
  double? get senseRetention;
  double? get kanaRetention;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardInitializedImplCopyWith<_$CardInitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardNewImplCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$CardNewImplCopyWith(
          _$CardNewImpl value, $Res Function(_$CardNewImpl) then) =
      __$$CardNewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sense,
      String? kana,
      String? kanji,
      String? note,
      DateTime created,
      CardType type});
}

/// @nodoc
class __$$CardNewImplCopyWithImpl<$Res>
    extends _$CardCopyWithImpl<$Res, _$CardNewImpl>
    implements _$$CardNewImplCopyWith<$Res> {
  __$$CardNewImplCopyWithImpl(
      _$CardNewImpl _value, $Res Function(_$CardNewImpl) _then)
      : super(_value, _then);

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sense = null,
    Object? kana = freezed,
    Object? kanji = freezed,
    Object? note = freezed,
    Object? created = null,
    Object? type = null,
  }) {
    return _then(_$CardNewImpl(
      null == sense
          ? _value.sense
          : sense // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == kana
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == kanji
          ? _value.kanji
          : kanji // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CardType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardNewImpl implements CardNew {
  _$CardNewImpl(
      this.sense, this.kana, this.kanji, this.note, this.created, this.type,
      {final String? $type})
      : $type = $type ?? 'newCard';

  factory _$CardNewImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardNewImplFromJson(json);

  @override
  final String sense;
  @override
  final String? kana;
  @override
  final String? kanji;
  @override
  final String? note;
  @override
  final DateTime created;
  @override
  final CardType type;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Card.newCard(sense: $sense, kana: $kana, kanji: $kanji, note: $note, created: $created, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardNewImpl &&
            (identical(other.sense, sense) || other.sense == sense) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            (identical(other.kanji, kanji) || other.kanji == kanji) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sense, kana, kanji, note, created, type);

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardNewImplCopyWith<_$CardNewImpl> get copyWith =>
      __$$CardNewImplCopyWithImpl<_$CardNewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int? id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type,
            double? senseRetention,
            double? kanaRetention)
        $default, {
    required TResult Function(String sense, String? kana, String? kanji,
            String? note, DateTime created, CardType type)
        newCard,
  }) {
    return newCard(sense, kana, kanji, note, created, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int? id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type,
            double? senseRetention,
            double? kanaRetention)?
        $default, {
    TResult? Function(String sense, String? kana, String? kanji, String? note,
            DateTime created, CardType type)?
        newCard,
  }) {
    return newCard?.call(sense, kana, kanji, note, created, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int? id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type,
            double? senseRetention,
            double? kanaRetention)?
        $default, {
    TResult Function(String sense, String? kana, String? kanji, String? note,
            DateTime created, CardType type)?
        newCard,
    required TResult orElse(),
  }) {
    if (newCard != null) {
      return newCard(sense, kana, kanji, note, created, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CardInitialized value) $default, {
    required TResult Function(CardNew value) newCard,
  }) {
    return newCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CardInitialized value)? $default, {
    TResult? Function(CardNew value)? newCard,
  }) {
    return newCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CardInitialized value)? $default, {
    TResult Function(CardNew value)? newCard,
    required TResult orElse(),
  }) {
    if (newCard != null) {
      return newCard(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CardNewImplToJson(
      this,
    );
  }
}

abstract class CardNew implements Card {
  factory CardNew(
      final String sense,
      final String? kana,
      final String? kanji,
      final String? note,
      final DateTime created,
      final CardType type) = _$CardNewImpl;

  factory CardNew.fromJson(Map<String, dynamic> json) = _$CardNewImpl.fromJson;

  @override
  String get sense;
  @override
  String? get kana;
  @override
  String? get kanji;
  @override
  String? get note;
  @override
  DateTime get created;
  @override
  CardType get type;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardNewImplCopyWith<_$CardNewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
