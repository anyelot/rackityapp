import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pantalla_ingresar_model.dart';
export 'pantalla_ingresar_model.dart';

class PantallaIngresarWidget extends StatefulWidget {
  const PantallaIngresarWidget({Key? key}) : super(key: key);

  @override
  _PantallaIngresarWidgetState createState() => _PantallaIngresarWidgetState();
}

class _PantallaIngresarWidgetState extends State<PantallaIngresarWidget>
    with TickerProviderStateMixin {
  late PantallaIngresarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PantallaIngresarModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
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
            colors: [Colors.white, Color(0xFF4EDBBC)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(1.0, -1.0),
            end: AlignmentDirectional(-1.0, 1.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rackity',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFFFCA379),
                    fontSize: 60.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Divider(
              thickness: 1.0,
              color: Color(0x00EEEEEE),
            ),
            Align(
              alignment: AlignmentDirectional(-0.5, 0.0),
              child: Text(
                'Bienvenido',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF2F8C61),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Divider(
              thickness: 1.0,
              color: Color(0x00EEEEEE),
            ),
            Container(
              width: 250.0,
              child: TextFormField(
                controller: _model.textController1,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Usuario',
                  hintStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF2F8C61),
                        fontWeight: FontWeight.w600,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 12.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00101213),
                      width: 12.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00101213),
                      width: 12.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00101213),
                      width: 12.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                textAlign: TextAlign.start,
                validator: _model.textController1Validator.asValidator(context),
              ),
            ),
            Divider(
              thickness: 1.0,
              color: Color(0x00EEEEEE),
            ),
            Container(
              width: 250.0,
              child: TextFormField(
                controller: _model.textController2,
                autofocus: true,
                obscureText: !_model.passwordVisibility,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  hintStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF2F8C61),
                        fontWeight: FontWeight.w600,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  suffixIcon: InkWell(
                    onTap: () => setState(
                      () => _model.passwordVisibility =
                          !_model.passwordVisibility,
                    ),
                    focusNode: FocusNode(skipTraversal: true),
                    child: Icon(
                      _model.passwordVisibility
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 22,
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
                textAlign: TextAlign.start,
                validator: _model.textController2Validator.asValidator(context),
              ),
            ),
            Divider(
              thickness: 1.0,
              color: Color(0x00EEEEEE),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Theme(
                    data: ThemeData(
                      checkboxTheme: CheckboxThemeData(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      unselectedWidgetColor:
                          FlutterFlowTheme.of(context).accent2,
                    ),
                    child: Checkbox(
                      value: _model.checkboxValue ??= true,
                      onChanged: (newValue) async {
                        setState(() => _model.checkboxValue = newValue!);
                      },
                      activeColor: Color(0xFF2F8C61),
                    ),
                  ),
                  Text(
                    'Recuerdame',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF2F8C61),
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(
                    height: 100.0,
                    child: VerticalDivider(
                      thickness: 1.0,
                      color: Color(0x00EEEEEE),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Olvidaste tu contraseña?',
                    options: FFButtonOptions(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x004B39EF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF095132),
                                fontWeight: FontWeight.w600,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 72.0,
              thickness: 1.0,
              color: Color(0x00EEEEEE),
            ),
            FFButtonWidget(
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
              text: 'Ingresar',
              options: FFButtonOptions(
                width: 160.0,
                height: 45.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xFFFF8E58),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'No tienes una cuenta?',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF2F8C61),
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(
                    height: 100.0,
                    child: VerticalDivider(
                      thickness: 1.0,
                      color: Color(0x00EEEEEE),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        'PantallaRegistro',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.bottomToTop,
                          ),
                        },
                      );
                    },
                    text: 'Registrate',
                    options: FFButtonOptions(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x004B39EF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF095132),
                                fontWeight: FontWeight.w600,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
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
