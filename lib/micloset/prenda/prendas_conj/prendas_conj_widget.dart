import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'prendas_conj_model.dart';
export 'prendas_conj_model.dart';

class PrendasConjWidget extends StatefulWidget {
  const PrendasConjWidget({Key? key}) : super(key: key);

  @override
  _PrendasConjWidgetState createState() => _PrendasConjWidgetState();
}

class _PrendasConjWidgetState extends State<PrendasConjWidget>
    with TickerProviderStateMixin {
  late PrendasConjModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrendasConjModel());
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
      body: Stack(
        children: [
          Container(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(23.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Mi clóset',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.getFont(
                          'Josefin Sans',
                          color: Color(0xFF0F5C4B),
                          fontWeight: FontWeight.w600,
                          fontSize: 30.0,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                      child: VerticalDivider(
                        width: 150.0,
                        thickness: 2.0,
                        color: Color(0x00EEEEEE),
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Color(0xFFC8C8C8),
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 45.0,
                      fillColor: Colors.white,
                      icon: Icon(
                        Icons.face_rounded,
                        color: Color(0xFFFCA379),
                        size: 20.0,
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
                      height: 60.0,
                      child: VerticalDivider(
                        thickness: 1.0,
                        color: Color(0x00EEEEEE),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 3.0, 5.0, 3.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Prendas',
                        options: FFButtonOptions(
                          width: 100.0,
                          height: 45.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFB3FFEE),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Josefin Sans',
                                    color: Color(0xFF0F5C54),
                                    fontSize: 15.0,
                                  ),
                          borderSide: BorderSide(
                            color: Color(0xFF7DFFE3),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                      child: VerticalDivider(
                        thickness: 1.0,
                        color: Color(0x00EEEEEE),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'ConjuntosPan',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      text: 'Conjuntos',
                      options: FFButtonOptions(
                        width: 100.0,
                        height: 35.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0x004B39EF),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Josefin Sans',
                                  color: Color(0xFF0F5C54),
                                  fontSize: 15.0,
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
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().FiltroPrenda = false;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: 389.7,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(45.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Divider(
                              height: 10.0,
                              thickness: 1.0,
                              color: Color(0x00EEEEEE),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -0.95),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Filtrar',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Josefin Sans',
                                            color: Color(0xFF0F5C54),
                                            fontSize: 20.0,
                                          ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (FFAppState().FiltroPrenda) {
                                        setState(() {
                                          FFAppState().FiltroPrenda = false;
                                        });
                                      } else {
                                        setState(() {
                                          FFAppState().FiltroPrenda = true;
                                        });
                                      }
                                    },
                                    child: Card(
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      child: FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        borderWidth: 1.0,
                                        buttonSize: 40.0,
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 25.0,
                                        ),
                                        onPressed: () async {
                                          if (FFAppState().FiltroPrenda) {
                                            setState(() {
                                              FFAppState().FiltroPrenda = false;
                                            });
                                          } else {
                                            setState(() {
                                              FFAppState().FiltroPrenda = true;
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 395.9,
                              height: 380.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: StreamBuilder<List<ImagesRecord>>(
                                stream: queryImagesRecord(
                                  parent: currentUserReference,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                    );
                                  }
                                  List<ImagesRecord>
                                      staggeredViewImagesRecordList =
                                      snapshot.data!;
                                  return MasonryGridView.count(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                    itemCount:
                                        staggeredViewImagesRecordList.length,
                                    itemBuilder: (context, staggeredViewIndex) {
                                      final staggeredViewImagesRecord =
                                          staggeredViewImagesRecordList[
                                              staggeredViewIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'prenda',
                                              queryParams: {
                                                'img': serializeParam(
                                                  staggeredViewImagesRecord
                                                      .reference,
                                                  ParamType.DocumentReference,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            elevation: 2.0,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 10.0, 10.0),
                                              child: Image.network(
                                                staggeredViewImagesRecord.path!,
                                                width: 75.0,
                                                height: 150.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
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
                                        color: Color(0xFFFCA379),
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
                                        final selectedMedia = await selectMedia(
                                          mediaSource: MediaSource.photoGallery,
                                          multiImage: false,
                                        );
                                        if (selectedMedia != null &&
                                            selectedMedia.every((m) =>
                                                validateFileFormat(
                                                    m.storagePath, context))) {
                                          setState(() =>
                                              _model.isDataUploading = true);
                                          var selectedUploadedFiles =
                                              <FFUploadedFile>[];
                                          var downloadUrls = <String>[];
                                          try {
                                            showUploadMessage(
                                              context,
                                              'Uploading file...',
                                              showLoading: true,
                                            );
                                            selectedUploadedFiles =
                                                selectedMedia
                                                    .map((m) => FFUploadedFile(
                                                          name: m.storagePath
                                                              .split('/')
                                                              .last,
                                                          bytes: m.bytes,
                                                          height: m.dimensions
                                                              ?.height,
                                                          width: m.dimensions
                                                              ?.width,
                                                          blurHash: m.blurHash,
                                                        ))
                                                    .toList();

                                            downloadUrls = (await Future.wait(
                                              selectedMedia.map(
                                                (m) async => await uploadData(
                                                    m.storagePath, m.bytes),
                                              ),
                                            ))
                                                .where((u) => u != null)
                                                .map((u) => u!)
                                                .toList();
                                          } finally {
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentSnackBar();
                                            _model.isDataUploading = false;
                                          }
                                          if (selectedUploadedFiles.length ==
                                                  selectedMedia.length &&
                                              downloadUrls.length ==
                                                  selectedMedia.length) {
                                            setState(() {
                                              _model.uploadedLocalFile =
                                                  selectedUploadedFiles.first;
                                              _model.uploadedFileUrl =
                                                  downloadUrls.first;
                                            });
                                            showUploadMessage(
                                                context, 'Success!');
                                          } else {
                                            setState(() {});
                                            showUploadMessage(context,
                                                'Failed to upload data');
                                            return;
                                          }
                                        }

                                        final imagesCreateData =
                                            createImagesRecordData(
                                          path: _model.uploadedFileUrl,
                                          type: 'top',
                                        );
                                        var imagesRecordReference =
                                            ImagesRecord.createDoc(
                                                currentUserReference!);
                                        await imagesRecordReference
                                            .set(imagesCreateData);
                                        _model.image1 =
                                            ImagesRecord.getDocumentFromData(
                                                imagesCreateData,
                                                imagesRecordReference);

                                        setState(() {});
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
                                        color: Color(0xFF4AC7AC),
                                        size: 30.0,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('Buscador');
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
                      if (FFAppState().FiltroPrenda)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              100.0, 55.0, 0.0, 0.0),
                          child: Container(
                            width: 132.9,
                            height: 196.2,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 9.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                color: Color(0xFF0F5C3B),
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .accent2,
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue1 ??= true,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue1 =
                                              newValue!);
                                        },
                                        activeColor: Color(0xFF47B089),
                                      ),
                                    ),
                                    Text(
                                      'Blazers',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Josefin Sans',
                                            color: Color(0xFF0F5C4B),
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .accent2,
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue2 ??= true,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue2 =
                                              newValue!);
                                        },
                                        activeColor: Color(0xFF47B089),
                                      ),
                                    ),
                                    Text(
                                      'Camisas',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Josefin Sans',
                                            color: Color(0xFF0F5C4B),
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .accent2,
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue3 ??= true,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue3 =
                                              newValue!);
                                        },
                                        activeColor: Color(0xFF47B089),
                                      ),
                                    ),
                                    Text(
                                      'Tops',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Josefin Sans',
                                            color: Color(0xFF0F5C4B),
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .accent2,
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue4 ??= true,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue4 =
                                              newValue!);
                                        },
                                        activeColor: Color(0xFF47B089),
                                      ),
                                    ),
                                    Text(
                                      'Pantalones',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Josefin Sans',
                                            color: Color(0xFF0F5C4B),
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .accent2,
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue5 ??= true,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue5 =
                                              newValue!);
                                        },
                                        activeColor: Color(0xFF47B089),
                                      ),
                                    ),
                                    Text(
                                      'Shorts',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Josefin Sans',
                                            color: Color(0xFF0F5C4B),
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            FlutterFlowTheme.of(context)
                                                .accent2,
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue6 ??= true,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue6 =
                                              newValue!);
                                        },
                                        activeColor: Color(0xFF47B089),
                                      ),
                                    ),
                                    Text(
                                      'Zapatos',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Josefin Sans',
                                            color: Color(0xFF0F5C4B),
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
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
        ],
      ),
    );
  }
}
