// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
class _$CardTearOff {
  const _$CardTearOff();

  CardInitialized call(
      int id,
      String sense,
      @JsonKey(fromJson: toNonEmptyString) String? kana,
      @JsonKey(fromJson: toNonEmptyString) String? kanji,
      String? note) {
    return CardInitialized(
      id,
      sense,
      kana,
      kanji,
      note,
    );
  }

  CardNew newCard(String sense, String? kana, String? kanji, String? note) {
    return CardNew(
      sense,
      kana,
      kanji,
      note,
    );
  }

  Card fromJson(Map<String, Object?> json) {
    return Card.fromJson(json);
  }
}

/// @nodoc
const $Card = _$CardTearOff();

/// @nodoc
mixin _$Card {
  String get sense => throw _privateConstructorUsedError;
  @JsonKey(fromJson: toNonEmptyString)
  String? get kana => throw _privateConstructorUsedError;
  @JsonKey(fromJson: toNonEmptyString)
  String? get kanji => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            String? note)
        $default, {
    required TResult Function(
            String sense, String? kana, String? kanji, String? note)
        newCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            String? note)?
        $default, {
    TResult Function(String sense, String? kana, String? kanji, String? note)?
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
            String? note)?
        $default, {
    TResult Function(String sense, String? kana, String? kanji, String? note)?
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
    TResult Function(CardInitialized value)? $default, {
    TResult Function(CardNew value)? newCard,
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
      _$CardCopyWithImpl<$Res>;
  $Res call(
      {String sense,
      @JsonKey(fromJson: toNonEmptyString) String? kana,
      @JsonKey(fromJson: toNonEmptyString) String? kanji,
      String? note});
}

/// @nodoc
class _$CardCopyWithImpl<$Res> implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  final Card _value;
  // ignore: unused_field
  final $Res Function(Card) _then;

  @override
  $Res call({
    Object? sense = freezed,
    Object? kana = freezed,
    Object? kanji = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      sense: sense == freezed
          ? _value.sense
          : sense // ignore: cast_nullable_to_non_nullable
              as String,
      kana: kana == freezed
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String?,
      kanji: kanji == freezed
          ? _value.kanji
          : kanji // ignore: cast_nullable_to_non_nullable
              as String?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $CardInitializedCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory $CardInitializedCopyWith(
          CardInitialized value, $Res Function(CardInitialized) then) =
      _$CardInitializedCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String sense,
      @JsonKey(fromJson: toNonEmptyString) String? kana,
      @JsonKey(fromJson: toNonEmptyString) String? kanji,
      String? note});
}

/// @nodoc
class _$CardInitializedCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res>
    implements $CardInitializedCopyWith<$Res> {
  _$CardInitializedCopyWithImpl(
      CardInitialized _value, $Res Function(CardInitialized) _then)
      : super(_value, (v) => _then(v as CardInitialized));

  @override
  CardInitialized get _value => super._value as CardInitialized;

  @override
  $Res call({
    Object? id = freezed,
    Object? sense = freezed,
    Object? kana = freezed,
    Object? kanji = freezed,
    Object? note = freezed,
  }) {
    return _then(CardInitialized(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sense == freezed
          ? _value.sense
          : sense // ignore: cast_nullable_to_non_nullable
              as String,
      kana == freezed
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String?,
      kanji == freezed
          ? _value.kanji
          : kanji // ignore: cast_nullable_to_non_nullable
              as String?,
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.note,
      {String? $type})
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
  final String? note;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Card(id: $id, sense: $sense, kana: $kana, kanji: $kanji, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardInitialized &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.sense, sense) &&
            const DeepCollectionEquality().equals(other.kana, kana) &&
            const DeepCollectionEquality().equals(other.kanji, kanji) &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(sense),
      const DeepCollectionEquality().hash(kana),
      const DeepCollectionEquality().hash(kanji),
      const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  $CardInitializedCopyWith<CardInitialized> get copyWith =>
      _$CardInitializedCopyWithImpl<CardInitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            String? note)
        $default, {
    required TResult Function(
            String sense, String? kana, String? kanji, String? note)
        newCard,
  }) {
    return $default(id, sense, kana, kanji, note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            String? note)?
        $default, {
    TResult Function(String sense, String? kana, String? kanji, String? note)?
        newCard,
  }) {
    return $default?.call(id, sense, kana, kanji, note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            String? note)?
        $default, {
    TResult Function(String sense, String? kana, String? kanji, String? note)?
        newCard,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, sense, kana, kanji, note);
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
    TResult Function(CardInitialized value)? $default, {
    TResult Function(CardNew value)? newCard,
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
    return _$$CardInitializedToJson(this);
  }
}

abstract class CardInitialized implements Card {
  factory CardInitialized(
      int id,
      String sense,
      @JsonKey(fromJson: toNonEmptyString) String? kana,
      @JsonKey(fromJson: toNonEmptyString) String? kanji,
      String? note) = _$CardInitialized;

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
  String? get note;
  @override
  @JsonKey(ignore: true)
  $CardInitializedCopyWith<CardInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardNewCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory $CardNewCopyWith(CardNew value, $Res Function(CardNew) then) =
      _$CardNewCopyWithImpl<$Res>;
  @override
  $Res call({String sense, String? kana, String? kanji, String? note});
}

/// @nodoc
class _$CardNewCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res>
    implements $CardNewCopyWith<$Res> {
  _$CardNewCopyWithImpl(CardNew _value, $Res Function(CardNew) _then)
      : super(_value, (v) => _then(v as CardNew));

  @override
  CardNew get _value => super._value as CardNew;

  @override
  $Res call({
    Object? sense = freezed,
    Object? kana = freezed,
    Object? kanji = freezed,
    Object? note = freezed,
  }) {
    return _then(CardNew(
      sense == freezed
          ? _value.sense
          : sense // ignore: cast_nullable_to_non_nullable
              as String,
      kana == freezed
          ? _value.kana
          : kana // ignore: cast_nullable_to_non_nullable
              as String?,
      kanji == freezed
          ? _value.kanji
          : kanji // ignore: cast_nullable_to_non_nullable
              as String?,
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardNew implements CardNew {
  _$CardNew(this.sense, this.kana, this.kanji, this.note, {String? $type})
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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Card.newCard(sense: $sense, kana: $kana, kanji: $kanji, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardNew &&
            const DeepCollectionEquality().equals(other.sense, sense) &&
            const DeepCollectionEquality().equals(other.kana, kana) &&
            const DeepCollectionEquality().equals(other.kanji, kanji) &&
            const DeepCollectionEquality().equals(other.note, note));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sense),
      const DeepCollectionEquality().hash(kana),
      const DeepCollectionEquality().hash(kanji),
      const DeepCollectionEquality().hash(note));

  @JsonKey(ignore: true)
  @override
  $CardNewCopyWith<CardNew> get copyWith =>
      _$CardNewCopyWithImpl<CardNew>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            String? note)
        $default, {
    required TResult Function(
            String sense, String? kana, String? kanji, String? note)
        newCard,
  }) {
    return newCard(sense, kana, kanji, note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            String? note)?
        $default, {
    TResult Function(String sense, String? kana, String? kanji, String? note)?
        newCard,
  }) {
    return newCard?.call(sense, kana, kanji, note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id,
            String sense,
            @JsonKey(fromJson: toNonEmptyString) String? kana,
            @JsonKey(fromJson: toNonEmptyString) String? kanji,
            String? note)?
        $default, {
    TResult Function(String sense, String? kana, String? kanji, String? note)?
        newCard,
    required TResult orElse(),
  }) {
    if (newCard != null) {
      return newCard(sense, kana, kanji, note);
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
    TResult Function(CardInitialized value)? $default, {
    TResult Function(CardNew value)? newCard,
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
    return _$$CardNewToJson(this);
  }
}

abstract class CardNew implements Card {
  factory CardNew(String sense, String? kana, String? kanji, String? note) =
      _$CardNew;

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
  @JsonKey(ignore: true)
  $CardNewCopyWith<CardNew> get copyWith => throw _privateConstructorUsedError;
}
