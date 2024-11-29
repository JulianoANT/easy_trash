import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendaDataRecord extends FirestoreRecord {
  AgendaDataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "te" field.
  String? _te;
  String get te => _te ?? '';
  bool hasTe() => _te != null;

  // "hora" field.
  DateTime? _hora;
  DateTime? get hora => _hora;
  bool hasHora() => _hora != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _data = snapshotData['data'] as DateTime?;
    _status = snapshotData['status'] as bool?;
    _te = snapshotData['te'] as String?;
    _hora = snapshotData['hora'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('agendaData')
          : FirebaseFirestore.instance.collectionGroup('agendaData');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('agendaData').doc(id);

  static Stream<AgendaDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgendaDataRecord.fromSnapshot(s));

  static Future<AgendaDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgendaDataRecord.fromSnapshot(s));

  static AgendaDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgendaDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgendaDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgendaDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgendaDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgendaDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgendaDataRecordData({
  DateTime? createdAt,
  DateTime? data,
  bool? status,
  String? te,
  DateTime? hora,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'data': data,
      'status': status,
      'te': te,
      'hora': hora,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgendaDataRecordDocumentEquality implements Equality<AgendaDataRecord> {
  const AgendaDataRecordDocumentEquality();

  @override
  bool equals(AgendaDataRecord? e1, AgendaDataRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.data == e2?.data &&
        e1?.status == e2?.status &&
        e1?.te == e2?.te &&
        e1?.hora == e2?.hora;
  }

  @override
  int hash(AgendaDataRecord? e) => const ListEquality()
      .hash([e?.createdAt, e?.data, e?.status, e?.te, e?.hora]);

  @override
  bool isValidKey(Object? o) => o is AgendaDataRecord;
}
