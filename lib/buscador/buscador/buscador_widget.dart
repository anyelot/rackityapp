import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'buscador_model.dart';
export 'buscador_model.dart';

class BuscadorWidget extends StatefulWidget {
  const BuscadorWidget({Key? key}) : super(key: key);

  @override
  _BuscadorWidgetState createState() => _BuscadorWidgetState();
}

class _BuscadorWidgetState extends State<BuscadorWidget>
    with TickerProviderStateMixin {
  late BuscadorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuscadorModel());

    _model.textController ??= TextEditingController();
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
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(1.0, -1.0),
            end: AlignmentDirectional(-1.0, 1.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(
              thickness: 1.0,
              color: Color(0x00EEEEEE),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                  child: VerticalDivider(
                    thickness: 1.0,
                    color: Color(0x00EEEEEE),
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 24.0,
                ),
                SizedBox(
                  height: 20.0,
                  child: VerticalDivider(
                    thickness: 1.0,
                    color: Color(0x00EEEEEE),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    controller: _model.textController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Buscar',
                      hintStyle: FlutterFlowTheme.of(context).bodySmall,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      filled: true,
                      fillColor: Color(0xFF7DFFE3),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Josefin Sans',
                          fontSize: 25.0,
                        ),
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  child: VerticalDivider(
                    width: 25.0,
                    thickness: 1.0,
                    color: Color(0x00EEEEEE),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10.0,
              child: Divider(
                height: 10.0,
                thickness: 1.0,
                color: Color(0x00EEEEEE),
              ),
            ),
            Container(
              width: 389.7,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(45.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 395.9,
                    height: 490.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Divider(
                          height: 20.0,
                          thickness: 1.0,
                          color: Color(0x00EEEEEE),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF747474),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/azul.JPG',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: Text(
                                'Azul',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Josefin Sans',
                                      color:
                                          FlutterFlowTheme.of(context).accent3,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 20.0,
                          thickness: 1.0,
                          color: Color(0x00EEEEEE),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/rojo.JPG',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: Text(
                                'Rojo',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Josefin Sans',
                                      color:
                                          FlutterFlowTheme.of(context).accent3,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 20.0,
                          thickness: 1.0,
                          color: Color(0x00EEEEEE),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/amarillo.JPG',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: Text(
                                'Amarillo',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Josefin Sans',
                                      color:
                                          FlutterFlowTheme.of(context).accent3,
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF41B69E),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -0.65),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            height: 75.0,
                            child: VerticalDivider(
                              width: 20.0,
                              thickness: 1.0,
                              color: Color(0x00EEEEEE),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFC8C8C8),
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: Colors.white,
                            icon: Icon(
                              Icons.all_inbox,
                              color: Color(0xFF41B69E),
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                'PrendasConj',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                          SizedBox(
                            height: 75.0,
                            child: VerticalDivider(
                              width: 10.0,
                              thickness: 1.0,
                              color: Color(0x00EEEEEE),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFC8C8C8),
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: Colors.white,
                            icon: Icon(
                              Icons.auto_awesome,
                              color: Color(0xFF4AC7AC),
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('generador');
                            },
                          ),
                          SizedBox(
                            height: 75.0,
                            child: VerticalDivider(
                              width: 10.0,
                              thickness: 1.0,
                              color: Color(0x00EEEEEE),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFC8C8C8),
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 70.0,
                            fillColor: Colors.white,
                            icon: Icon(
                              Icons.camera_enhance_outlined,
                              color: Color(0xFFFCA379),
                              size: 45.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('PrendasConj');
                            },
                          ),
                          SizedBox(
                            height: 75.0,
                            child: VerticalDivider(
                              width: 10.0,
                              thickness: 1.0,
                              color: Color(0x00EEEEEE),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFC8C8C8),
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: Colors.white,
                            icon: Icon(
                              Icons.calendar_today_sharp,
                              color: Color(0xFF41B69E),
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('Calendario');
                            },
                          ),
                          SizedBox(
                            height: 75.0,
                            child: VerticalDivider(
                              width: 10.0,
                              thickness: 1.0,
                              color: Color(0x00EEEEEE),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Color(0xFFC8C8C8),
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 60.0,
                            fillColor: Colors.white,
                            icon: Icon(
                              Icons.search_sharp,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 30.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          SizedBox(
                            height: 75.0,
                            child: VerticalDivider(
                              width: 20.0,
                              thickness: 1.0,
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
