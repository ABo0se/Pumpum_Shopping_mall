import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_page_model.dart';
export 'product_page_model.dart';

class ProductPageWidget extends StatefulWidget {
  const ProductPageWidget({
    Key? key,
    this.priceperpc,
    String? productname,
    String? productpic,
  })  : this.productname = productname ?? 'productname',
        this.productpic = productpic ??
            'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/22286819-5e0e-436d-af37-47043dd99fe0/esc-womens-sleeveless-jacket-0DDzLT.png',
        super(key: key);

  final double? priceperpc;
  final String productname;
  final String productpic;

  @override
  _ProductPageWidgetState createState() => _ProductPageWidgetState();
}

class _ProductPageWidgetState extends State<ProductPageWidget> {
  late ProductPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 500.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          Image.network(
                            widget.productpic,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        borderWidth: 1.0,
                                        buttonSize: 50.0,
                                        fillColor: Color(0xC0FF4B4B),
                                        icon: FaIcon(
                                          FontAwesomeIcons.chevronLeft,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                        onPressed: () async {
                                          context.safePop();
                                        },
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        borderWidth: 1.0,
                                        buttonSize: 50.0,
                                        fillColor: Color(0xC0FF4B4B),
                                        icon: Icon(
                                          Icons.shopping_cart_rounded,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                        onPressed: () async {
                                          context.goNamed(
                                            'Cart',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .rightToLeft,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF4B4B),
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 14.0, 0.0, 0.0),
                            child: AutoSizeText(
                              widget.productname,
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Fredoka',
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 30.0, 15.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  formatNumber(
                                    widget.priceperpc,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.periodDecimal,
                                    currency: '฿‎',
                                  ),
                                  '0',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Fredoka',
                                      color: Color(0xFFFF4B4B),
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Container(
                                width: 156.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFF4B4B),
                                  borderRadius: BorderRadius.circular(25.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: Color(0x00E0E3E7),
                                    width: 2.0,
                                  ),
                                ),
                                child: FlutterFlowCountController(
                                  decrementIconBuilder: (enabled) => FaIcon(
                                    FontAwesomeIcons.minus,
                                    color: enabled
                                        ? Colors.white
                                        : Color(0xFFE0E3E7),
                                    size: 20.0,
                                  ),
                                  incrementIconBuilder: (enabled) => FaIcon(
                                    FontAwesomeIcons.plus,
                                    color: enabled
                                        ? Colors.white
                                        : Color(0xFFE0E3E7),
                                    size: 20.0,
                                  ),
                                  countBuilder: (count) => Text(
                                    count.toString(),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                        ),
                                  ),
                                  count: _model.countControllerValue ??= 1,
                                  updateCount: (count) => setState(() =>
                                      _model.countControllerValue = count),
                                  stepSize: 1,
                                  minimum: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 70.0,
              decoration: BoxDecoration(
                color: Color(0xFFFF4B4B),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5.0,
                    color: Color(0x411D2429),
                    offset: Offset(0.0, 2.0),
                  )
                ],
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: FFButtonWidget(
                onPressed: () async {
                  final checkoutlistCreateData = createCheckoutlistRecordData(
                    productname: widget.productname,
                    pic: widget.productpic,
                    priceOne: widget.priceperpc,
                    quantity: _model.countControllerValue,
                    priceAll: _model.countControllerValue! * widget.priceperpc!,
                    uid: currentUserUid,
                  );
                  await CheckoutlistRecord.collection
                      .doc()
                      .set(checkoutlistCreateData);

                  final usersUpdateData = {
                    'all_cost': FieldValue.increment(
                        _model.countControllerValue! * widget.priceperpc!),
                  };
                  await currentUserReference!.update(usersUpdateData);

                  context.pushNamed('Cart');
                },
                text: 'Add to cart',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFFF4B4B),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Fredoka One',
                        color: Colors.white,
                        fontSize: 24.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
