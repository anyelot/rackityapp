import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendario_model.dart';
export 'calendario_model.dart';

class CalendarioWidget extends StatefulWidget {
  const CalendarioWidget({Key? key}) : super(key: key);

  @override
  _CalendarioWidgetState createState() => _CalendarioWidgetState();
}

class _CalendarioWidgetState extends State<CalendarioWidget>
    with TickerProviderStateMixin {
  late CalendarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarioModel());
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
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  fillColor: Color(0xFFFCA379),
                  icon: Icon(
                    Icons.add,
                    color: Color(0xFFFDFEFF),
                    size: 30.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                SizedBox(
                  height: 20.0,
                  child: VerticalDivider(
                    width: 25.0,
                    thickness: 1.0,
                    color: Color(0x00EEEEEE),
                  ),
                ),
                Text(
                  'Mi calendario',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Josefin Sans',
                        color: Color(0xFF0F5C4B),
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
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
                    child: FlutterFlowCalendar(
                      color: Color(0xFFFCA379),
                      iconColor: Color(0xFF0F5C4B),
                      weekFormat: false,
                      weekStartsMonday: false,
                      rowHeight: 60.0,
                      onChange: (DateTimeRange? newSelectedDate) {
                        setState(
                            () => _model.calendarSelectedDay = newSelectedDate);
                      },
                      titleStyle: TextStyle(
                        color: Color(0xFF0F5C4B),
                        fontWeight: FontWeight.w600,
                      ),
                      dayOfWeekStyle: TextStyle(),
                      dateStyle: TextStyle(),
                      selectedDateStyle: TextStyle(),
                      inactiveDateStyle: TextStyle(),
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
