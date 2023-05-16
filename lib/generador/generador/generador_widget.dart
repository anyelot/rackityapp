import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'generador_model.dart';
export 'generador_model.dart';

class GeneradorWidget extends StatefulWidget {
  const GeneradorWidget({
    Key? key,
    this.top,
  }) : super(key: key);

  final String? top;

  @override
  _GeneradorWidgetState createState() => _GeneradorWidgetState();
}

class _GeneradorWidgetState extends State<GeneradorWidget> {
  late GeneradorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeneradorModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Creación de Conjntos',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Josefin Sans',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(100.0, 20.0, 100.0, 20.0),
                  child: StreamBuilder<List<ImagesRecord>>(
                    stream: queryImagesRecord(
                      parent: currentUserReference,
                      queryBuilder: (imagesRecord) =>
                          imagesRecord.where('type', isEqualTo: 'bottom'),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        );
                      }
                      List<ImagesRecord> swipeableStackImagesRecordList =
                          snapshot.data!;
                      return FlutterFlowSwipeableStack(
                        topCardHeightFraction: 0.72,
                        middleCardHeightFraction: 0.68,
                        bottomCardHeightFraction: 0.75,
                        topCardWidthFraction: 0.9,
                        middleCardWidthFraction: 0.85,
                        bottomCardWidthFraction: 0.8,
                        onSwipeFn: (index) {},
                        onLeftSwipe: (index) {},
                        onRightSwipe: (index) {},
                        onUpSwipe: (index) {},
                        onDownSwipe: (index) {},
                        itemBuilder: (context, swipeableStackIndex) {
                          final swipeableStackImagesRecord =
                              swipeableStackImagesRecordList[
                                  swipeableStackIndex];
                          return Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            child: Image.network(
                              swipeableStackImagesRecord.path!,
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                        itemCount: swipeableStackImagesRecordList.length,
                        controller: _model.swipeableStackController1,
                        enableSwipeUp: false,
                        enableSwipeDown: false,
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(100.0, 20.0, 100.0, 20.0),
                  child: StreamBuilder<List<ImagesRecord>>(
                    stream: queryImagesRecord(
                      parent: currentUserReference,
                      queryBuilder: (imagesRecord) =>
                          imagesRecord.where('type', isEqualTo: 'shoes'),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        );
                      }
                      List<ImagesRecord> swipeableStackImagesRecordList =
                          snapshot.data!;
                      return FlutterFlowSwipeableStack(
                        topCardHeightFraction: 0.72,
                        middleCardHeightFraction: 0.68,
                        bottomCardHeightFraction: 0.75,
                        topCardWidthFraction: 0.9,
                        middleCardWidthFraction: 0.85,
                        bottomCardWidthFraction: 0.8,
                        onSwipeFn: (index) {},
                        onLeftSwipe: (index) {},
                        onRightSwipe: (index) {},
                        onUpSwipe: (index) {},
                        onDownSwipe: (index) {},
                        itemBuilder: (context, swipeableStackIndex) {
                          final swipeableStackImagesRecord =
                              swipeableStackImagesRecordList[
                                  swipeableStackIndex];
                          return Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            child: Image.network(
                              swipeableStackImagesRecord.path!,
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                        itemCount: swipeableStackImagesRecordList.length,
                        controller: _model.swipeableStackController2,
                        enableSwipeUp: false,
                        enableSwipeDown: false,
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(100.0, 20.0, 100.0, 20.0),
                  child: StreamBuilder<List<ImagesRecord>>(
                    stream: queryImagesRecord(
                      parent: currentUserReference,
                      queryBuilder: (imagesRecord) =>
                          imagesRecord.where('type', isEqualTo: 'top'),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        );
                      }
                      List<ImagesRecord> swipeableStackImagesRecordList =
                          snapshot.data!;
                      return FlutterFlowSwipeableStack(
                        topCardHeightFraction: 0.72,
                        middleCardHeightFraction: 0.68,
                        bottomCardHeightFraction: 0.75,
                        topCardWidthFraction: 0.9,
                        middleCardWidthFraction: 0.85,
                        bottomCardWidthFraction: 0.8,
                        onSwipeFn: (index) {},
                        onLeftSwipe: (index) {},
                        onRightSwipe: (index) {},
                        onUpSwipe: (index) {},
                        onDownSwipe: (index) {},
                        itemBuilder: (context, swipeableStackIndex) {
                          final swipeableStackImagesRecord =
                              swipeableStackImagesRecordList[
                                  swipeableStackIndex];
                          return Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            child: Image.network(
                              swipeableStackImagesRecord.path!,
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          );
                        },
                        itemCount: swipeableStackImagesRecordList.length,
                        controller: _model.swipeableStackController3,
                        enableSwipeUp: false,
                        enableSwipeDown: false,
                      );
                    },
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  final conjuntosCreateData = createConjuntosRecordData(
                    top:
                        'https://firebasestorage.googleapis.com/v0/b/rackity-app.appspot.com/o/users%2F4lNk3CgtSnPZsU11ZWRoEKULRBI2%2Fuploads%2F1684127946831000.png?alt=media&token=2720f767-85eb-4c4c-add3-b84834b27856',
                    bottom:
                        'https://firebasestorage.googleapis.com/v0/b/rackity-app.appspot.com/o/users%2F4lNk3CgtSnPZsU11ZWRoEKULRBI2%2Fuploads%2F1684127969798000.png?alt=media&token=f9dd5890-1ce3-4601-9255-d44bbc108925',
                    shoes:
                        'https://firebasestorage.googleapis.com/v0/b/rackity-app.appspot.com/o/users%2F4lNk3CgtSnPZsU11ZWRoEKULRBI2%2Fuploads%2F1684127985353000.png?alt=media&token=85037edd-7055-45a4-9601-03dbafacefed',
                  );
                  await ConjuntosRecord.createDoc(currentUserReference!)
                      .set(conjuntosCreateData);

                  context.pushNamed('ConjuntosPan');
                },
                child: Stack(
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(1.0, 3.0, 0.0, 0.0),
                      child: Image.asset(
                        'assets/images/Rectangle_91.png',
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 7.0, 3.0, 3.0),
                      child: Image.asset(
                        'assets/images/Group_55.png',
                        width: 25.0,
                        height: 25.0,
                        fit: BoxFit.fill,
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
                          color: FlutterFlowTheme.of(context).primary,
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
                          color: FlutterFlowTheme.of(context).secondary,
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
      ),
    );
  }
}
