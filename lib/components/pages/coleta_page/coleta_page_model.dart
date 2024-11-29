import '/components/coleta_page12_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'coleta_page_widget.dart' show ColetaPageWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class ColetaPageModel extends FlutterFlowModel<ColetaPageWidget> {
  ///  Local state fields for this page.

  double? totalCo2;

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? coletaPageController;
  // Model for ColetaPage12 component.
  late ColetaPage12Model coletaPage12Model;

  @override
  void initState(BuildContext context) {
    coletaPage12Model = createModel(context, () => ColetaPage12Model());
  }

  @override
  void dispose() {
    coletaPageController?.finish();
    coletaPage12Model.dispose();
  }
}
