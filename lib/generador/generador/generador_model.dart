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

class GeneradorModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SwipeableStack widget.
  late SwipeableCardSectionController swipeableStackController1;
  // State field(s) for SwipeableStack widget.
  late SwipeableCardSectionController swipeableStackController2;
  // State field(s) for SwipeableStack widget.
  late SwipeableCardSectionController swipeableStackController3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    swipeableStackController1 = SwipeableCardSectionController();
    swipeableStackController2 = SwipeableCardSectionController();
    swipeableStackController3 = SwipeableCardSectionController();
  }

  void dispose() {}

  /// Additional helper methods are added here.

}
