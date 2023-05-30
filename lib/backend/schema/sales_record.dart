import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SalesRecord extends FirestoreRecord {
  SalesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _quantity = snapshotData['quantity'] as int?;
    _pic = snapshotData['pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sales');

  static Stream<SalesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SalesRecord.fromSnapshot(s));

  static Future<SalesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SalesRecord.fromSnapshot(s));

  static SalesRecord fromSnapshot(DocumentSnapshot snapshot) => SalesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SalesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SalesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SalesRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createSalesRecordData({
  String? name,
  double? price,
  int? quantity,
  String? pic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'quantity': quantity,
      'pic': pic,
    }.withoutNulls,
  );

  return firestoreData;
}
