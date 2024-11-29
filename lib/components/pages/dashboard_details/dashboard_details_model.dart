import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_details_widget.dart' show DashboardDetailsWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class DashboardDetailsModel extends FlutterFlowModel<DashboardDetailsWidget> {
  ///  Local state fields for this page.

  DateTime? inicialData;

  DateTime? finalDAta;

  List<double> numPco2 = [];
  void addToNumPco2(double item) => numPco2.add(item);
  void removeFromNumPco2(double item) => numPco2.remove(item);
  void removeAtIndexFromNumPco2(int index) => numPco2.removeAt(index);
  void insertAtIndexInNumPco2(int index, double item) =>
      numPco2.insert(index, item);
  void updateNumPco2AtIndex(int index, Function(double) updateFn) =>
      numPco2[index] = updateFn(numPco2[index]);

  List<double> numPco2Mes = [];
  void addToNumPco2Mes(double item) => numPco2Mes.add(item);
  void removeFromNumPco2Mes(double item) => numPco2Mes.remove(item);
  void removeAtIndexFromNumPco2Mes(int index) => numPco2Mes.removeAt(index);
  void insertAtIndexInNumPco2Mes(int index, double item) =>
      numPco2Mes.insert(index, item);
  void updateNumPco2MesAtIndex(int index, Function(double) updateFn) =>
      numPco2Mes[index] = updateFn(numPco2Mes[index]);

  List<double> numPapel = [];
  void addToNumPapel(double item) => numPapel.add(item);
  void removeFromNumPapel(double item) => numPapel.remove(item);
  void removeAtIndexFromNumPapel(int index) => numPapel.removeAt(index);
  void insertAtIndexInNumPapel(int index, double item) =>
      numPapel.insert(index, item);
  void updateNumPapelAtIndex(int index, Function(double) updateFn) =>
      numPapel[index] = updateFn(numPapel[index]);

  List<double> numPlastico = [];
  void addToNumPlastico(double item) => numPlastico.add(item);
  void removeFromNumPlastico(double item) => numPlastico.remove(item);
  void removeAtIndexFromNumPlastico(int index) => numPlastico.removeAt(index);
  void insertAtIndexInNumPlastico(int index, double item) =>
      numPlastico.insert(index, item);
  void updateNumPlasticoAtIndex(int index, Function(double) updateFn) =>
      numPlastico[index] = updateFn(numPlastico[index]);

  List<double> numVidro = [];
  void addToNumVidro(double item) => numVidro.add(item);
  void removeFromNumVidro(double item) => numVidro.remove(item);
  void removeAtIndexFromNumVidro(int index) => numVidro.removeAt(index);
  void insertAtIndexInNumVidro(int index, double item) =>
      numVidro.insert(index, item);
  void updateNumVidroAtIndex(int index, Function(double) updateFn) =>
      numVidro[index] = updateFn(numVidro[index]);

  List<double> numMetais = [];
  void addToNumMetais(double item) => numMetais.add(item);
  void removeFromNumMetais(double item) => numMetais.remove(item);
  void removeAtIndexFromNumMetais(int index) => numMetais.removeAt(index);
  void insertAtIndexInNumMetais(int index, double item) =>
      numMetais.insert(index, item);
  void updateNumMetaisAtIndex(int index, Function(double) updateFn) =>
      numMetais[index] = updateFn(numMetais[index]);

  List<double> numLata = [];
  void addToNumLata(double item) => numLata.add(item);
  void removeFromNumLata(double item) => numLata.remove(item);
  void removeAtIndexFromNumLata(int index) => numLata.removeAt(index);
  void insertAtIndexInNumLata(int index, double item) =>
      numLata.insert(index, item);
  void updateNumLataAtIndex(int index, Function(double) updateFn) =>
      numLata[index] = updateFn(numLata[index]);

  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? dashboardController;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    dashboardController?.finish();
  }
}
