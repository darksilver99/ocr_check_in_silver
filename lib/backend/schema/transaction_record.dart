import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionRecord extends FirestoreRecord {
  TransactionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "create_date" field.
  DateTime? _createDate;
  DateTime? get createDate => _createDate;
  bool hasCreateDate() => _createDate != null;

  // "create_by" field.
  DocumentReference? _createBy;
  DocumentReference? get createBy => _createBy;
  bool hasCreateBy() => _createBy != null;

  // "card_number" field.
  String? _cardNumber;
  String get cardNumber => _cardNumber ?? '';
  bool hasCardNumber() => _cardNumber != null;

  // "pre_name" field.
  String? _preName;
  String get preName => _preName ?? '';
  bool hasPreName() => _preName != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "birth_date" field.
  String? _birthDate;
  String get birthDate => _birthDate ?? '';
  bool hasBirthDate() => _birthDate != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "car_registration" field.
  String? _carRegistration;
  String get carRegistration => _carRegistration ?? '';
  bool hasCarRegistration() => _carRegistration != null;

  // "car_registration_province" field.
  String? _carRegistrationProvince;
  String get carRegistrationProvince => _carRegistrationProvince ?? '';
  bool hasCarRegistrationProvince() => _carRegistrationProvince != null;

  void _initializeFields() {
    _createDate = snapshotData['create_date'] as DateTime?;
    _createBy = snapshotData['create_by'] as DocumentReference?;
    _cardNumber = snapshotData['card_number'] as String?;
    _preName = snapshotData['pre_name'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _birthDate = snapshotData['birth_date'] as String?;
    _gender = snapshotData['gender'] as String?;
    _carRegistration = snapshotData['car_registration'] as String?;
    _carRegistrationProvince =
        snapshotData['car_registration_province'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transaction');

  static Stream<TransactionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionRecord.fromSnapshot(s));

  static Future<TransactionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionRecord.fromSnapshot(s));

  static TransactionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionRecordData({
  DateTime? createDate,
  DocumentReference? createBy,
  String? cardNumber,
  String? preName,
  String? firstName,
  String? lastName,
  String? birthDate,
  String? gender,
  String? carRegistration,
  String? carRegistrationProvince,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'create_date': createDate,
      'create_by': createBy,
      'card_number': cardNumber,
      'pre_name': preName,
      'first_name': firstName,
      'last_name': lastName,
      'birth_date': birthDate,
      'gender': gender,
      'car_registration': carRegistration,
      'car_registration_province': carRegistrationProvince,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionRecordDocumentEquality implements Equality<TransactionRecord> {
  const TransactionRecordDocumentEquality();

  @override
  bool equals(TransactionRecord? e1, TransactionRecord? e2) {
    return e1?.createDate == e2?.createDate &&
        e1?.createBy == e2?.createBy &&
        e1?.cardNumber == e2?.cardNumber &&
        e1?.preName == e2?.preName &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.birthDate == e2?.birthDate &&
        e1?.gender == e2?.gender &&
        e1?.carRegistration == e2?.carRegistration &&
        e1?.carRegistrationProvince == e2?.carRegistrationProvince;
  }

  @override
  int hash(TransactionRecord? e) => const ListEquality().hash([
        e?.createDate,
        e?.createBy,
        e?.cardNumber,
        e?.preName,
        e?.firstName,
        e?.lastName,
        e?.birthDate,
        e?.gender,
        e?.carRegistration,
        e?.carRegistrationProvince
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionRecord;
}
