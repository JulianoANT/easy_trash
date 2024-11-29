import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'maps_coletas_widget.dart' show MapsColetasWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class MapsColetasModel extends FlutterFlowModel<MapsColetasWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? locationController;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    locationController?.finish();
  }
}
