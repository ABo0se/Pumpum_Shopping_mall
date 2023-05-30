// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CheckoutDetailStruct extends FFFirebaseStruct {
  CheckoutDetailStruct({
    String? productname,
    int? quantity,
    String? productPic,
    double? costOne,
    double? costAll,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productname = productname,
        _quantity = quantity,
        _productPic = productPic,
        _costOne = costOne,
        _costAll = costAll,
        super(firestoreUtilData);

  // "productname" field.
  String? _productname;
  String get productname => _productname ?? '';
  set productname(String? val) => _productname = val;
  bool hasProductname() => _productname != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "product_pic" field.
  String? _productPic;
  String get productPic => _productPic ?? '';
  set productPic(String? val) => _productPic = val;
  bool hasProductPic() => _productPic != null;

  // "cost_one" field.
  double? _costOne;
  double get costOne => _costOne ?? 0.0;
  set costOne(double? val) => _costOne = val;
  void incrementCostOne(double amount) => _costOne = costOne + amount;
  bool hasCostOne() => _costOne != null;

  // "cost_all" field.
  double? _costAll;
  double get costAll => _costAll ?? 0.0;
  set costAll(double? val) => _costAll = val;
  void incrementCostAll(double amount) => _costAll = costAll + amount;
  bool hasCostAll() => _costAll != null;

  static CheckoutDetailStruct fromMap(Map<String, dynamic> data) =>
      CheckoutDetailStruct(
        productname: data['productname'] as String?,
        quantity: data['quantity'] as int?,
        productPic: data['product_pic'] as String?,
        costOne: castToType<double>(data['cost_one']),
        costAll: castToType<double>(data['cost_all']),
      );

  static CheckoutDetailStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CheckoutDetailStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'productname': _productname,
        'quantity': _quantity,
        'product_pic': _productPic,
        'cost_one': _costOne,
        'cost_all': _costAll,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productname': serializeParam(
          _productname,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'product_pic': serializeParam(
          _productPic,
          ParamType.String,
        ),
        'cost_one': serializeParam(
          _costOne,
          ParamType.double,
        ),
        'cost_all': serializeParam(
          _costAll,
          ParamType.double,
        ),
      }.withoutNulls;

  static CheckoutDetailStruct fromSerializableMap(Map<String, dynamic> data) =>
      CheckoutDetailStruct(
        productname: deserializeParam(
          data['productname'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        productPic: deserializeParam(
          data['product_pic'],
          ParamType.String,
          false,
        ),
        costOne: deserializeParam(
          data['cost_one'],
          ParamType.double,
          false,
        ),
        costAll: deserializeParam(
          data['cost_all'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CheckoutDetailStruct(${toMap()})';
}

CheckoutDetailStruct createCheckoutDetailStruct({
  String? productname,
  int? quantity,
  String? productPic,
  double? costOne,
  double? costAll,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CheckoutDetailStruct(
      productname: productname,
      quantity: quantity,
      productPic: productPic,
      costOne: costOne,
      costAll: costAll,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CheckoutDetailStruct? updateCheckoutDetailStruct(
  CheckoutDetailStruct? checkoutDetail, {
  bool clearUnsetFields = true,
}) =>
    checkoutDetail
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addCheckoutDetailStructData(
  Map<String, dynamic> firestoreData,
  CheckoutDetailStruct? checkoutDetail,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (checkoutDetail == null) {
    return;
  }
  if (checkoutDetail.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && checkoutDetail.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final checkoutDetailData =
      getCheckoutDetailFirestoreData(checkoutDetail, forFieldValue);
  final nestedData =
      checkoutDetailData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = checkoutDetail.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCheckoutDetailFirestoreData(
  CheckoutDetailStruct? checkoutDetail, [
  bool forFieldValue = false,
]) {
  if (checkoutDetail == null) {
    return {};
  }
  final firestoreData = mapToFirestore(checkoutDetail.toMap());

  // Add any Firestore field values
  checkoutDetail.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCheckoutDetailListFirestoreData(
  List<CheckoutDetailStruct>? checkoutDetails,
) =>
    checkoutDetails
        ?.map((e) => getCheckoutDetailFirestoreData(e, true))
        .toList() ??
    [];
