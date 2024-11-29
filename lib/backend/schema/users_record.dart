import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "pCO2" field.
  String? _pCO2;
  String get pCO2 => _pCO2 ?? '';
  bool hasPCO2() => _pCO2 != null;

  // "loginMycard" field.
  bool? _loginMycard;
  bool get loginMycard => _loginMycard ?? false;
  bool hasLoginMycard() => _loginMycard != null;

  // "loginMap" field.
  bool? _loginMap;
  bool get loginMap => _loginMap ?? false;
  bool hasLoginMap() => _loginMap != null;

  // "loginDescarte" field.
  bool? _loginDescarte;
  bool get loginDescarte => _loginDescarte ?? false;
  bool hasLoginDescarte() => _loginDescarte != null;

  // "loginDashboard" field.
  bool? _loginDashboard;
  bool get loginDashboard => _loginDashboard ?? false;
  bool hasLoginDashboard() => _loginDashboard != null;

  // "loginAgenda" field.
  bool? _loginAgenda;
  bool get loginAgenda => _loginAgenda ?? false;
  bool hasLoginAgenda() => _loginAgenda != null;

  // "ColAgendadas" field.
  int? _colAgendadas;
  int get colAgendadas => _colAgendadas ?? 0;
  bool hasColAgendadas() => _colAgendadas != null;

  // "colAtrasadas" field.
  int? _colAtrasadas;
  int get colAtrasadas => _colAtrasadas ?? 0;
  bool hasColAtrasadas() => _colAtrasadas != null;

  // "colFinalizadas" field.
  int? _colFinalizadas;
  int get colFinalizadas => _colFinalizadas ?? 0;
  bool hasColFinalizadas() => _colFinalizadas != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _uid = snapshotData['uid'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _pCO2 = snapshotData['pCO2'] as String?;
    _loginMycard = snapshotData['loginMycard'] as bool?;
    _loginMap = snapshotData['loginMap'] as bool?;
    _loginDescarte = snapshotData['loginDescarte'] as bool?;
    _loginDashboard = snapshotData['loginDashboard'] as bool?;
    _loginAgenda = snapshotData['loginAgenda'] as bool?;
    _colAgendadas = castToType<int>(snapshotData['ColAgendadas']);
    _colAtrasadas = castToType<int>(snapshotData['colAtrasadas']);
    _colFinalizadas = castToType<int>(snapshotData['colFinalizadas']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? displayName,
  String? email,
  String? password,
  String? uid,
  LatLng? location,
  String? photoUrl,
  String? phoneNumber,
  DateTime? createdTime,
  String? pCO2,
  bool? loginMycard,
  bool? loginMap,
  bool? loginDescarte,
  bool? loginDashboard,
  bool? loginAgenda,
  int? colAgendadas,
  int? colAtrasadas,
  int? colFinalizadas,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'email': email,
      'password': password,
      'uid': uid,
      'location': location,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'created_time': createdTime,
      'pCO2': pCO2,
      'loginMycard': loginMycard,
      'loginMap': loginMap,
      'loginDescarte': loginDescarte,
      'loginDashboard': loginDashboard,
      'loginAgenda': loginAgenda,
      'ColAgendadas': colAgendadas,
      'colAtrasadas': colAtrasadas,
      'colFinalizadas': colFinalizadas,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.uid == e2?.uid &&
        e1?.location == e2?.location &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.createdTime == e2?.createdTime &&
        e1?.pCO2 == e2?.pCO2 &&
        e1?.loginMycard == e2?.loginMycard &&
        e1?.loginMap == e2?.loginMap &&
        e1?.loginDescarte == e2?.loginDescarte &&
        e1?.loginDashboard == e2?.loginDashboard &&
        e1?.loginAgenda == e2?.loginAgenda &&
        e1?.colAgendadas == e2?.colAgendadas &&
        e1?.colAtrasadas == e2?.colAtrasadas &&
        e1?.colFinalizadas == e2?.colFinalizadas;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.email,
        e?.password,
        e?.uid,
        e?.location,
        e?.photoUrl,
        e?.phoneNumber,
        e?.createdTime,
        e?.pCO2,
        e?.loginMycard,
        e?.loginMap,
        e?.loginDescarte,
        e?.loginDashboard,
        e?.loginAgenda,
        e?.colAgendadas,
        e?.colAtrasadas,
        e?.colFinalizadas
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
