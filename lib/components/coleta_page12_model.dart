import '/flutter_flow/flutter_flow_util.dart';
import 'coleta_page12_widget.dart' show ColetaPage12Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ColetaPage12Model extends FlutterFlowModel<ColetaPage12Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for upapel widget.
  FocusNode? upapelFocusNode;
  TextEditingController? upapelTextController;
  final upapelMask = MaskTextInputFormatter(mask: '#.##');
  String? Function(BuildContext, String?)? upapelTextControllerValidator;
  // State field(s) for uvidro widget.
  FocusNode? uvidroFocusNode;
  TextEditingController? uvidroTextController;
  final uvidroMask = MaskTextInputFormatter(mask: '#.##');
  String? Function(BuildContext, String?)? uvidroTextControllerValidator;
  // State field(s) for ulata widget.
  FocusNode? ulataFocusNode;
  TextEditingController? ulataTextController;
  final ulataMask = MaskTextInputFormatter(mask: '#.##');
  String? Function(BuildContext, String?)? ulataTextControllerValidator;
  // State field(s) for umetais widget.
  FocusNode? umetaisFocusNode;
  TextEditingController? umetaisTextController;
  final umetaisMask = MaskTextInputFormatter(mask: '#.##');
  String? Function(BuildContext, String?)? umetaisTextControllerValidator;
  // State field(s) for uplastico widget.
  FocusNode? uplasticoFocusNode;
  TextEditingController? uplasticoTextController;
  final uplasticoMask = MaskTextInputFormatter(mask: '#.##');
  String? Function(BuildContext, String?)? uplasticoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    upapelFocusNode?.dispose();
    upapelTextController?.dispose();

    uvidroFocusNode?.dispose();
    uvidroTextController?.dispose();

    ulataFocusNode?.dispose();
    ulataTextController?.dispose();

    umetaisFocusNode?.dispose();
    umetaisTextController?.dispose();

    uplasticoFocusNode?.dispose();
    uplasticoTextController?.dispose();
  }
}
