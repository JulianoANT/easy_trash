import '/flutter_flow/flutter_flow_util.dart';
import 'm_y_card_widget.dart' show MYCardWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class MYCardModel extends FlutterFlowModel<MYCardWidget> {
  ///  Local state fields for this page.

  String? desfaul = '0';

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? telaInicialController;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    telaInicialController?.finish();
  }
}
