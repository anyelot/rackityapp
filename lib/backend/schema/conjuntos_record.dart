import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'conjuntos_record.g.dart';

abstract class ConjuntosRecord
    implements Built<ConjuntosRecord, ConjuntosRecordBuilder> {
  static Serializer<ConjuntosRecord> get serializer =>
      _$conjuntosRecordSerializer;

  String? get top;

  String? get bottom;

  String? get shoes;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ConjuntosRecordBuilder builder) => builder
    ..top = ''
    ..bottom = ''
    ..shoes = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('conjuntos')
          : FirebaseFirestore.instance.collectionGroup('conjuntos');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('conjuntos').doc();

  static Stream<ConjuntosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ConjuntosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ConjuntosRecord._();
  factory ConjuntosRecord([void Function(ConjuntosRecordBuilder) updates]) =
      _$ConjuntosRecord;

  static ConjuntosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createConjuntosRecordData({
  String? top,
  String? bottom,
  String? shoes,
}) {
  final firestoreData = serializers.toFirestore(
    ConjuntosRecord.serializer,
    ConjuntosRecord(
      (c) => c
        ..top = top
        ..bottom = bottom
        ..shoes = shoes,
    ),
  );

  return firestoreData;
}
