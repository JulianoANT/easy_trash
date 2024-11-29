import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocaisColetaRecord extends FirestoreRecord {
  LocaisColetaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "default_address" field.
  bool? _defaultAddress;
  bool get defaultAddress => _defaultAddress ?? false;
  bool hasDefaultAddress() => _defaultAddress != null;

  // "latLng" field.
  LatLng? _latLng;
  LatLng? get latLng => _latLng;
  bool hasLatLng() => _latLng != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "residuo" field.
  String? _residuo;
  String get residuo => _residuo ?? '';
  bool hasResiduo() => _residuo != null;

  // "addressName" field.
  String? _addressName;
  String get addressName => _addressName ?? '';
  bool hasAddressName() => _addressName != null;

  void _initializeFields() {
    _address = AddressStruct.maybeFromMap(snapshotData['address']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _defaultAddress = snapshotData['default_address'] as bool?;
    _latLng = snapshotData['latLng'] as LatLng?;
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
    _name = snapshotData['name'] as String?;
    _residuo = snapshotData['residuo'] as String?;
    _addressName = snapshotData['addressName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('locaisColeta');

  static Stream<LocaisColetaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocaisColetaRecord.fromSnapshot(s));

  static Future<LocaisColetaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocaisColetaRecord.fromSnapshot(s));

  static LocaisColetaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocaisColetaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocaisColetaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocaisColetaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocaisColetaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocaisColetaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocaisColetaRecordData({
  AddressStruct? address,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? defaultAddress,
  LatLng? latLng,
  String? image,
  String? description,
  String? name,
  String? residuo,
  String? addressName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address': AddressStruct().toMap(),
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'default_address': defaultAddress,
      'latLng': latLng,
      'image': image,
      'description': description,
      'name': name,
      'residuo': residuo,
      'addressName': addressName,
    }.withoutNulls,
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  return firestoreData;
}

class LocaisColetaRecordDocumentEquality
    implements Equality<LocaisColetaRecord> {
  const LocaisColetaRecordDocumentEquality();

  @override
  bool equals(LocaisColetaRecord? e1, LocaisColetaRecord? e2) {
    return e1?.address == e2?.address &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.defaultAddress == e2?.defaultAddress &&
        e1?.latLng == e2?.latLng &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description &&
        e1?.name == e2?.name &&
        e1?.residuo == e2?.residuo &&
        e1?.addressName == e2?.addressName;
  }

  @override
  int hash(LocaisColetaRecord? e) => const ListEquality().hash([
        e?.address,
        e?.createdAt,
        e?.modifiedAt,
        e?.defaultAddress,
        e?.latLng,
        e?.image,
        e?.description,
        e?.name,
        e?.residuo,
        e?.addressName
      ]);

  @override
  bool isValidKey(Object? o) => o is LocaisColetaRecord;
}
