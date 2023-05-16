import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'conjunto_model.dart';
export 'conjunto_model.dart';

class ConjuntoWidget extends StatefulWidget {
  const ConjuntoWidget({
    Key? key,
    required this.conjunto,
  }) : super(key: key);

  final DocumentReference? conjunto;

  @override
  _ConjuntoWidgetState createState() => _ConjuntoWidgetState();
}

class _ConjuntoWidgetState extends State<ConjuntoWidget> {
  late ConjuntoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConjuntoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: StreamBuilder<ConjuntosRecord>(
            stream: ConjuntosRecord.getDocument(widget.conjunto!),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                );
              }
              final columnConjuntosRecord = snapshot.data!;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('ConjuntosPan');
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(9.0, 9.0, 9.0, 9.0),
                        child: Image.network(
                          columnConjuntosRecord.top!,
                          width: 115.0,
                          height: 115.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(9.0, 9.0, 9.0, 9.0),
                        child: Image.network(
                          columnConjuntosRecord.bottom!,
                          width: 115.0,
                          height: 145.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(9.0, 9.0, 9.0, 9.0),
                        child: Image.network(
                          columnConjuntosRecord.shoes!,
                          width: 115.0,
                          height: 115.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF41B69E),
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                  setState(() => _model.isDataUploading = true);
                                  var selectedUploadedFiles =
                                      <FFUploadedFile>[];
                                  var downloadUrls = <String>[];
                                  try {
                                    showUploadMessage(
                                      context,
                                      'Uploading file...',
                                      showLoading: true,
                                    );
                                    selectedUploadedFiles = selectedMedia
                                        .map((m) => FFUploadedFile(
                                              name:
                                                  m.storagePath.split('/').last,
                                              bytes: m.bytes,
                                              height: m.dimensions?.height,
                                              width: m.dimensions?.width,
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
                                    showUploadMessage(context, 'Success!');
                                  } else {
                                    setState(() {});
                                    showUploadMessage(
                                        context, 'Failed to upload data');
                                    return;
                                  }
                                }

                                final imagesCreateData = createImagesRecordData(
                                  path: _model.uploadedFileUrl,
                                  type: 'bottom',
                                );
                                var imagesRecordReference =
                                    ImagesRecord.createDoc(
                                        currentUserReference!);
                                await imagesRecordReference
                                    .set(imagesCreateData);
                                _model.image = ImagesRecord.getDocumentFromData(
                                    imagesCreateData, imagesRecordReference);

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
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
