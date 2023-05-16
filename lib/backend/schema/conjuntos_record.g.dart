// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conjuntos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConjuntosRecord> _$conjuntosRecordSerializer =
    new _$ConjuntosRecordSerializer();

class _$ConjuntosRecordSerializer
    implements StructuredSerializer<ConjuntosRecord> {
  @override
  final Iterable<Type> types = const [ConjuntosRecord, _$ConjuntosRecord];
  @override
  final String wireName = 'ConjuntosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ConjuntosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.top;
    if (value != null) {
      result
        ..add('top')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bottom;
    if (value != null) {
      result
        ..add('bottom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shoes;
    if (value != null) {
      result
        ..add('shoes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ConjuntosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConjuntosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'top':
          result.top = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bottom':
          result.bottom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'shoes':
          result.shoes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ConjuntosRecord extends ConjuntosRecord {
  @override
  final String? top;
  @override
  final String? bottom;
  @override
  final String? shoes;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ConjuntosRecord([void Function(ConjuntosRecordBuilder)? updates]) =>
      (new ConjuntosRecordBuilder()..update(updates))._build();

  _$ConjuntosRecord._({this.top, this.bottom, this.shoes, this.ffRef})
      : super._();

  @override
  ConjuntosRecord rebuild(void Function(ConjuntosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConjuntosRecordBuilder toBuilder() =>
      new ConjuntosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConjuntosRecord &&
        top == other.top &&
        bottom == other.bottom &&
        shoes == other.shoes &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, top.hashCode);
    _$hash = $jc(_$hash, bottom.hashCode);
    _$hash = $jc(_$hash, shoes.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConjuntosRecord')
          ..add('top', top)
          ..add('bottom', bottom)
          ..add('shoes', shoes)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ConjuntosRecordBuilder
    implements Builder<ConjuntosRecord, ConjuntosRecordBuilder> {
  _$ConjuntosRecord? _$v;

  String? _top;
  String? get top => _$this._top;
  set top(String? top) => _$this._top = top;

  String? _bottom;
  String? get bottom => _$this._bottom;
  set bottom(String? bottom) => _$this._bottom = bottom;

  String? _shoes;
  String? get shoes => _$this._shoes;
  set shoes(String? shoes) => _$this._shoes = shoes;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ConjuntosRecordBuilder() {
    ConjuntosRecord._initializeBuilder(this);
  }

  ConjuntosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _top = $v.top;
      _bottom = $v.bottom;
      _shoes = $v.shoes;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConjuntosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConjuntosRecord;
  }

  @override
  void update(void Function(ConjuntosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConjuntosRecord build() => _build();

  _$ConjuntosRecord _build() {
    final _$result = _$v ??
        new _$ConjuntosRecord._(
            top: top, bottom: bottom, shoes: shoes, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
