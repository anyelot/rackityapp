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
import 'usuarios_model.dart';
export 'usuarios_model.dart';

class UsuariosWidget extends StatefulWidget {
  const UsuariosWidget({Key? key}) : super(key: key);

  @override
  _UsuariosWidgetState createState() => _UsuariosWidgetState();
}

class _UsuariosWidgetState extends State<UsuariosWidget>
    with TickerProviderStateMixin {
  late UsuariosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UsuariosModel());
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
            SizedBox(
              width: 10.0,
              child: Divider(
                height: 25.0,
                thickness: 1.0,
                color: Color(0x00EEEEEE),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    'Mi perfil',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: Color(0xFF0F5C4B),
                      fontWeight: FontWeight.w600,
                      fontSize: 50.0,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 20.0,
                  child: VerticalDivider(
                    thickness: 1.0,
                    color: Color(0x00EEEEEE),
                  ),
                ),
              ],
            ),
            Container(
              width: 389.7,
              height: 742.7,
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
                    height: 622.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Divider(
                          height: 45.0,
                          thickness: 1.0,
                          color: Color(0x00EEEEEE),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -0.9),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120.0,
                                height: 120.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'https://picsum.photos/seed/749/600',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 20.0,
                          thickness: 1.0,
                          color: Color(0x00EEEEEE),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Usuario',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0F5C4B),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 5.0,
                          thickness: 1.0,
                          color: Color(0x00EEEEEE),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'usuario@email.com',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 14.0,
                                  ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 35.0,
                          thickness: 1.0,
                          color: Color(0x00EEEEEE),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Editar informacion',
                              options: FFButtonOptions(
                                width: 160.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF4AC7AC),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 15.0,
                          thickness: 1.0,
                          color: Color(0x00EEEEEE),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed(
                                  'PantallaIngresar',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.topToBottom,
                                    ),
                                  },
                                );
                              },
                              text: 'Cerrar Sesión',
                              options: FFButtonOptions(
                                width: 160.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFFCA379),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400.0,
                    height: 138.6,
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
                            onPressed: () {
                              print('IconButton pressed ...');
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
                            onPressed: () {
                              print('IconButton pressed ...');
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
                              color: Color(0xFF4AC7AC),
                              size: 30.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
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
                              color: Color(0xFF4AC7AC),
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
