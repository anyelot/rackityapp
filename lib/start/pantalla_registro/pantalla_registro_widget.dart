import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pantalla_registro_model.dart';
export 'pantalla_registro_model.dart';

class PantallaRegistroWidget extends StatefulWidget {
  const PantallaRegistroWidget({Key? key}) : super(key: key);

  @override
  _PantallaRegistroWidgetState createState() => _PantallaRegistroWidgetState();
}

class _PantallaRegistroWidgetState extends State<PantallaRegistroWidget>
    with TickerProviderStateMixin {
  late PantallaRegistroModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PantallaRegistroModel());

    _model.textController1 ??= TextEditingController();
    _model.emailTextController ??= TextEditingController();
    _model.passwordTextController ??= TextEditingController();
    _model.confirmPasswordTextController ??= TextEditingController();
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(45.0, 30.0, 45.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/ra.png',
                    ).image,
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1.0,
              color: Color(0x00EEEEEE),
            ),
            Align(
              alignment: AlignmentDirectional(-0.4, 0.0),
              child: Text(
                'Ingresa tus datos',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Josefin Sans',
                      color: Color(0xFF2F8C61),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
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
                        fontFamily: 'Josefin Sans',
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
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Josefin Sans',
                      color: Color(0xFF2F8C61),
                    ),
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
                controller: _model.emailTextController,
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Correo Electronico',
                  hintStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Josefin Sans',
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
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Josefin Sans',
                      color: Color(0xFF2F8C61),
                    ),
                textAlign: TextAlign.start,
                validator:
                    _model.emailTextControllerValidator.asValidator(context),
              ),
            ),
            Divider(
              thickness: 1.0,
              color: Color(0x00EEEEEE),
            ),
            Container(
              width: 250.0,
              child: TextFormField(
                controller: _model.passwordTextController,
                autofocus: true,
                obscureText: !_model.passwordVisibility1,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  hintStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Josefin Sans',
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
                      () => _model.passwordVisibility1 =
                          !_model.passwordVisibility1,
                    ),
                    focusNode: FocusNode(skipTraversal: true),
                    child: Icon(
                      _model.passwordVisibility1
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 22,
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Josefin Sans',
                      color: Color(0xFF2F8C61),
                    ),
                textAlign: TextAlign.start,
                validator:
                    _model.passwordTextControllerValidator.asValidator(context),
              ),
            ),
            Divider(
              thickness: 1.0,
              color: Color(0x00EEEEEE),
            ),
            Container(
              width: 250.0,
              child: TextFormField(
                controller: _model.confirmPasswordTextController,
                autofocus: true,
                obscureText: !_model.passwordVisibility2,
                decoration: InputDecoration(
                  hintText: 'Confirmar contraseña',
                  hintStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Josefin Sans',
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
                      () => _model.passwordVisibility2 =
                          !_model.passwordVisibility2,
                    ),
                    focusNode: FocusNode(skipTraversal: true),
                    child: Icon(
                      _model.passwordVisibility2
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 22,
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Josefin Sans',
                      color: Color(0xFF2F8C61),
                    ),
                textAlign: TextAlign.start,
                validator: _model.confirmPasswordTextControllerValidator
                    .asValidator(context),
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
                    'Acepto  los Terminos de Uso \ny Condiciones, y la Politica de Privacidad',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Josefin Sans',
                          color: Color(0xFF2F8C61),
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  SizedBox(
                    height: 50.0,
                    child: VerticalDivider(
                      thickness: 1.0,
                      color: Color(0x00EEEEEE),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 30.0,
              thickness: 1.0,
              color: Color(0x00EEEEEE),
            ),
            FFButtonWidget(
              onPressed: () async {
                GoRouter.of(context).prepareAuthEvent();
                if (_model.passwordTextController.text !=
                    _model.confirmPasswordTextController.text) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Passwords don\'t match!',
                      ),
                    ),
                  );
                  return;
                }

                final user = await authManager.createAccountWithEmail(
                  context,
                  _model.emailTextController.text,
                  _model.passwordTextController.text,
                );
                if (user == null) {
                  return;
                }

                context.goNamedAuth('PantallaIngresar', mounted);
              },
              text: 'Registrate',
              options: FFButtonOptions(
                width: 160.0,
                height: 45.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0xFFFF8E58),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Josefin Sans',
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
                    'Ya tienes una cuenta?',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Josefin Sans',
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
                        'PantallaIngresar',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.topToBottom,
                          ),
                        },
                      );
                    },
                    text: 'Ingresa',
                    options: FFButtonOptions(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x004B39EF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Josefin Sans',
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
