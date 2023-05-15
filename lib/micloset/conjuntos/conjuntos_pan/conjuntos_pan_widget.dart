import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'conjuntos_pan_model.dart';
export 'conjuntos_pan_model.dart';

class ConjuntosPanWidget extends StatefulWidget {
  const ConjuntosPanWidget({Key? key}) : super(key: key);

  @override
  _ConjuntosPanWidgetState createState() => _ConjuntosPanWidgetState();
}

class _ConjuntosPanWidgetState extends State<ConjuntosPanWidget>
    with TickerProviderStateMixin {
  late ConjuntosPanModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConjuntosPanModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1E2429),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4AC7AC), Color(0xFF4EDBBC)],
            stops: [0, 1],
            begin: AlignmentDirectional(1, -1),
            end: AlignmentDirectional(-1, 1),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 10,
              child: Divider(
                height: 25,
                thickness: 1,
                color: Color(0x00EEEEEE),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    'Mi clóset',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Color(0xFF0F5C4B),
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: VerticalDivider(
                    width: 150,
                    thickness: 2,
                    color: Color(0x00EEEEEE),
                  ),
                ),
                FlutterFlowIconButton(
                  borderColor: Color(0xFFC8C8C8),
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 45,
                  fillColor: Colors.white,
                  icon: Icon(
                    Icons.face_rounded,
                    color: Color(0xFFFCA379),
                    size: 20,
                  ),
                  onPressed: () async {
                    context.pushNamed(
                      'Usuarios',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                        ),
                      },
                    );
                  },
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 60,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Color(0x00EEEEEE),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'PrendasConj',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  text: 'Prendas',
                  options: FFButtonOptions(
                    width: 100,
                    height: 45,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0x004B39EF),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF0F5C54),
                          fontSize: 15,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Color(0x00EEEEEE),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Conjuntos',
                  options: FFButtonOptions(
                    width: 100,
                    height: 45,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Color(0xFFB3FFEE),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF0F5C54),
                          fontSize: 15,
                        ),
                    borderSide: BorderSide(
                      color: Color(0xFF7DFFE3),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ],
            ),
            Container(
              width: 389.7,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(45),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    height: 10,
                    thickness: 1,
                    color: Color(0x00EEEEEE),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.95),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
                          child: Text(
                            'Filtrar',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF0F5C54),
                                  fontSize: 20,
                                ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 25,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 395.9,
                    height: 389,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                      child: GridView(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1,
                        ),
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xFF0F5C54),
                                width: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF41B69E),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0, -0.65),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            height: 75,
                            child: VerticalDivider(
                              width: 20,
                              thickness: 1,
                              color: Color(0x00EEEEEE),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFC8C8C8),
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            fillColor: Colors.white,
                            icon: Icon(
                              Icons.all_inbox,
                              color: Color(0xFFFCA379),
                              size: 30,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          SizedBox(
                            height: 75,
                            child: VerticalDivider(
                              width: 10,
                              thickness: 1,
                              color: Color(0x00EEEEEE),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFC8C8C8),
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            fillColor: Colors.white,
                            icon: Icon(
                              Icons.auto_awesome,
                              color: Color(0xFF4AC7AC),
                              size: 30,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          SizedBox(
                            height: 75,
                            child: VerticalDivider(
                              width: 10,
                              thickness: 1,
                              color: Color(0x00EEEEEE),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFC8C8C8),
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 70,
                            fillColor: Colors.white,
                            icon: Icon(
                              Icons.camera_enhance_outlined,
                              color: Color(0xFFFCA379),
                              size: 45,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          SizedBox(
                            height: 75,
                            child: VerticalDivider(
                              width: 10,
                              thickness: 1,
                              color: Color(0x00EEEEEE),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFC8C8C8),
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            fillColor: Colors.white,
                            icon: Icon(
                              Icons.calendar_today_sharp,
                              color: Color(0xFF4AC7AC),
                              size: 30,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          SizedBox(
                            height: 75,
                            child: VerticalDivider(
                              width: 10,
                              thickness: 1,
                              color: Color(0x00EEEEEE),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFC8C8C8),
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 60,
                            fillColor: Colors.white,
                            icon: Icon(
                              Icons.search_sharp,
                              color: Color(0xFF4AC7AC),
                              size: 30,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          SizedBox(
                            height: 75,
                            child: VerticalDivider(
                              width: 20,
                              thickness: 1,
                              color: Color(0x00EEEEEE),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
