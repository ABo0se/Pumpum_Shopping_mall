import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CheckoutlistRecord extends FirestoreRecord {
  CheckoutlistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productname" field.
  String? _productname;
  String get productname => _productname ?? '';
  bool hasProductname() => _productname != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  // "price_one" field.
  double? _priceOne;
  double get priceOne => _priceOne ?? 0.0;
  bool hasPriceOne() => _priceOne != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "price_all" field.
  double? _priceAll;
  double get priceAll => _priceAll ?? 0.0;
  bool hasPriceAll() => _priceAll != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _productname = snapshotData['productname'] as String?;
    _pic = snapshotData['pic'] as String?;
    _priceOne = castToType<double>(snapshotData['price_one']);
    _quantity = snapshotData['quantity'] as int?;
    _priceAll = castToType<double>(snapshotData['price_all']);
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('checkoutlist');

  static Stream<CheckoutlistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CheckoutlistRecord.fromSnapshot(s));

  static Future<CheckoutlistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CheckoutlistRecord.fromSnapshot(s));

  static CheckoutlistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CheckoutlistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CheckoutlistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CheckoutlistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CheckoutlistRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createCheckoutlistRecordData({
  String? productname,
  String? pic,
  double? priceOne,
  int? quantity,
  double? priceAll,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productname': productname,
      'pic': pic,
      'price_one': priceOne,
      'quantity': quantity,
      'price_all': priceAll,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}
