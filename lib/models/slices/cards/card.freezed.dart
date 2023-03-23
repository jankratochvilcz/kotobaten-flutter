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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type)
        $default, {
    required TResult Function(String sense, String? kana, String? kanji,
            String? note, DateTime created, CardType type)
        newCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type)?
        $default, {
    TResult? Function(String sense, String? kana, String? kanji, String? note,
            DateTime created, CardType type)?
        newCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type)?
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
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$CardInitializedCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$CardInitializedCopyWith(
          _$CardInitialized value, $Res Function(_$CardInitialized) then) =
      __$$CardInitializedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String sense,
      @JsonKey(fromJson: toNonEmptyString) String? kana,
      @JsonKey(fromJson: toNonEmptyString) String? kanji,
      DateTime created,
      String? note,
      CardType type});
}

/// @nodoc
class __$$CardInitializedCopyWithImpl<$Res>
    extends _$CardCopyWithImpl<$Res, _$CardInitialized>
    implements _$$CardInitializedCopyWith<$Res> {
  __$$CardInitializedCopyWithImpl(
      _$CardInitialized _value, $Res Function(_$CardInitialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sense = null,
    Object? kana = freezed,
    Object? kanji = freezed,
    Object? created = null,
    Object? note = freezed,
    Object? type = null,
  }) {
    return _then(_$CardInitialized(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CardInitialized implements CardInitialized {
  _$CardInitialized(
      this.id,
      this.sense,
      @JsonKey(fromJson: toNonEmptyString) this.kana,
      @JsonKey(fromJson: toNonEmptyString) this.kanji,
      this.created,
      this.note,
      this.type,
      {final String? $type})
      : $type = $type ?? 'default';

  factory _$CardInitialized.fromJson(Map<String, dynamic> json) =>
      _$$CardInitializedFromJson(json);

  @override
  final int id;
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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Card(id: $id, sense: $sense, kana: $kana, kanji: $kanji, created: $created, note: $note, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardInitialized &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sense, sense) || other.sense == sense) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            (identical(other.kanji, kanji) || other.kanji == kanji) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sense, kana, kanji, created, note, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardInitializedCopyWith<_$CardInitialized> get copyWith =>
      __$$CardInitializedCopyWithImpl<_$CardInitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type)
        $default, {
    required TResult Function(String sense, String? kana, String? kanji,
            String? note, DateTime created, CardType type)
        newCard,
  }) {
    return $default(id, sense, kana, kanji, created, note, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type)?
        $default, {
    TResult? Function(String sense, String? kana, String? kanji, String? note,
            DateTime created, CardType type)?
        newCard,
  }) {
    return $default?.call(id, sense, kana, kanji, created, note, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type)?
        $default, {
    TResult Function(String sense, String? kana, String? kanji, String? note,
            DateTime created, CardType type)?
        newCard,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, sense, kana, kanji, created, note, type);
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
    return _$$CardInitializedToJson(
      this,
    );
  }
}

abstract class CardInitialized implements Card {
  factory CardInitialized(
      final int id,
      final String sense,
      @JsonKey(fromJson: toNonEmptyString) final String? kana,
      @JsonKey(fromJson: toNonEmptyString) final String? kanji,
      final DateTime created,
      final String? note,
      final CardType type) = _$CardInitialized;

  factory CardInitialized.fromJson(Map<String, dynamic> json) =
      _$CardInitialized.fromJson;

  int get id;
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
  @override
  @JsonKey(ignore: true)
  _$$CardInitializedCopyWith<_$CardInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardNewCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$CardNewCopyWith(_$CardNew value, $Res Function(_$CardNew) then) =
      __$$CardNewCopyWithImpl<$Res>;
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
class __$$CardNewCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res, _$CardNew>
    implements _$$CardNewCopyWith<$Res> {
  __$$CardNewCopyWithImpl(_$CardNew _value, $Res Function(_$CardNew) _then)
      : super(_value, _then);

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
    return _then(_$CardNew(
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
class _$CardNew implements CardNew {
  _$CardNew(
      this.sense, this.kana, this.kanji, this.note, this.created, this.type,
      {final String? $type})
      : $type = $type ?? 'newCard';

  factory _$CardNew.fromJson(Map<String, dynamic> json) =>
      _$$CardNewFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardNew &&
            (identical(other.sense, sense) || other.sense == sense) &&
            (identical(other.kana, kana) || other.kana == kana) &&
            (identical(other.kanji, kanji) || other.kanji == kanji) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sense, kana, kanji, note, created, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardNewCopyWith<_$CardNew> get copyWith =>
      __$$CardNewCopyWithImpl<_$CardNew>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type)
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
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type)?
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
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            DateTime created,
            String? note,
            CardType type)?
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
    return _$$CardNewToJson(
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
      final CardType type) = _$CardNew;

  factory CardNew.fromJson(Map<String, dynamic> json) = _$CardNew.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$CardNewCopyWith<_$CardNew> get copyWith =>
      throw _privateConstructorUsedError;
}
