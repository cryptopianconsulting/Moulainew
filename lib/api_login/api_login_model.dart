import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ApiLoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for userIdLogin widget.
  TextEditingController? userIdLoginController;
  String? Function(BuildContext, String?)? userIdLoginControllerValidator;
  // State field(s) for passwordLogin widget.
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordLoginVisibility = false;
  }

  void dispose() {
    userIdLoginController?.dispose();
    passwordLoginController?.dispose();
  }

  /// Additional helper methods are added here.

}
