import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DadosColetaRecord extends FirestoreRecord {
  DadosColetaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "pCO2total" field.
  double? _pCO2total;
  double get pCO2total => _pCO2total ?? 0.0;
  bool hasPCO2total() => _pCO2total != null;

  // "papel" field.
  double? _papel;
  double get papel => _papel ?? 0.0;
  bool hasPapel() => _papel != null;

  // "plastico" field.
  double? _plastico;
  double get plastico => _plastico ?? 0.0;
  bool hasPlastico() => _plastico != null;

  // "lata" field.
  double? _lata;
  double get lata => _lata ?? 0.0;
  bool hasLata() => _lata != null;

  // "vidro" field.
  double? _vidro;
  double get vidro => _vidro ?? 0.0;
  bool hasVidro() => _vidro != null;

  // "metais" field.
  double? _metais;
  double get metais => _metais ?? 0.0;
  bool hasMetais() => _metais != null;

  // "pCO2papel" field.
  double? _pCO2papel;
  double get pCO2papel => _pCO2papel ?? 0.0;
  bool hasPCO2papel() => _pCO2papel != null;

  // "pCO2plastico" field.
  double? _pCO2plastico;
  double get pCO2plastico => _pCO2plastico ?? 0.0;
  bool hasPCO2plastico() => _pCO2plastico != null;

  // "pCO2lata" field.
  double? _pCO2lata;
  double get pCO2lata => _pCO2lata ?? 0.0;
  bool hasPCO2lata() => _pCO2lata != null;

  // "pCO2vidro" field.
  double? _pCO2vidro;
  double get pCO2vidro => _pCO2vidro ?? 0.0;
  bool hasPCO2vidro() => _pCO2vidro != null;

  // "pCO2metais" field.
  double? _pCO2metais;
  double get pCO2metais => _pCO2metais ?? 0.0;
  bool hasPCO2metais() => _pCO2metais != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _pCO2total = castToType<double>(snapshotData['pCO2total']);
    _papel = castToType<double>(snapshotData['papel']);
    _plastico = castToType<double>(snapshotData['plastico']);
    _lata = castToType<double>(snapshotData['lata']);
    _vidro = castToType<double>(snapshotData['vidro']);
    _metais = castToType<double>(snapshotData['metais']);
    _pCO2papel = castToType<double>(snapshotData['pCO2papel']);
    _pCO2plastico = castToType<double>(snapshotData['pCO2plastico']);
    _pCO2lata = castToType<double>(snapshotData['pCO2lata']);
    _pCO2vidro = castToType<double>(snapshotData['pCO2vidro']);
    _pCO2metais = castToType<double>(snapshotData['pCO2metais']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('dadosColeta')
          : FirebaseFirestore.instance.collectionGroup('dadosColeta');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('dadosColeta').doc(id);

  static Stream<DadosColetaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DadosColetaRecord.fromSnapshot(s));

  static Future<DadosColetaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DadosColetaRecord.fromSnapshot(s));

  static DadosColetaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DadosColetaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DadosColetaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DadosColetaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DadosColetaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DadosColetaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDadosColetaRecordData({
  DateTime? createdAt,
  double? pCO2total,
  double? papel,
  double? plastico,
  double? lata,
  double? vidro,
  double? metais,
  double? pCO2papel,
  double? pCO2plastico,
  double? pCO2lata,
  double? pCO2vidro,
  double? pCO2metais,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'pCO2total': pCO2total,
      'papel': papel,
      'plastico': plastico,
      'lata': lata,
      'vidro': vidro,
      'metais': metais,
      'pCO2papel': pCO2papel,
      'pCO2plastico': pCO2plastico,
      'pCO2lata': pCO2lata,
      'pCO2vidro': pCO2vidro,
      'pCO2metais': pCO2metais,
    }.withoutNulls,
  );

  return firestoreData;
}

class DadosColetaRecordDocumentEquality implements Equality<DadosColetaRecord> {
  const DadosColetaRecordDocumentEquality();

  @override
  bool equals(DadosColetaRecord? e1, DadosColetaRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.pCO2total == e2?.pCO2total &&
        e1?.papel == e2?.papel &&
        e1?.plastico == e2?.plastico &&
        e1?.lata == e2?.lata &&
        e1?.vidro == e2?.vidro &&
        e1?.metais == e2?.metais &&
        e1?.pCO2papel == e2?.pCO2papel &&
        e1?.pCO2plastico == e2?.pCO2plastico &&
        e1?.pCO2lata == e2?.pCO2lata &&
        e1?.pCO2vidro == e2?.pCO2vidro &&
        e1?.pCO2metais == e2?.pCO2metais;
  }

  @override
  int hash(DadosColetaRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.pCO2total,
        e?.papel,
        e?.plastico,
        e?.lata,
        e?.vidro,
        e?.metais,
        e?.pCO2papel,
        e?.pCO2plastico,
        e?.pCO2lata,
        e?.pCO2vidro,
        e?.pCO2metais
      ]);

  @override
  bool isValidKey(Object? o) => o is DadosColetaRecord;
}
