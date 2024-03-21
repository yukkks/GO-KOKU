import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_device_complete_model.dart';
export 'order_device_complete_model.dart';

class OrderDeviceCompleteWidget extends StatefulWidget {
  const OrderDeviceCompleteWidget({super.key});

  @override
  State<OrderDeviceCompleteWidget> createState() =>
      _OrderDeviceCompleteWidgetState();
}

class _OrderDeviceCompleteWidgetState extends State<OrderDeviceCompleteWidget> {
  late OrderDeviceCompleteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderDeviceCompleteModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 250.0,
              height: 250.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiary,
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FaIcon(
                  FontAwesomeIcons.check,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 175.0,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 56.0, 0.0, 56.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'q9s60jvg' /* 配送依頼受け取りました */,
                    ),
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 56.0, 10.0, 56.0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '5sjiwtfw' /* ・お客様からのお申し込みの受理日か7～14日間程度で、商品を... */,
                ),
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 15.0,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 70.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    'homePage',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.bottomToTop,
                        duration: Duration(milliseconds: 200),
                      ),
                    },
                  );
                },
                text: FFLocalizations.of(context).getText(
                  '1k6321eq' /* 次へ */,
                ),
                options: FFButtonOptions(
                  width: 130.0,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).tertiary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                  elevation: 2.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
