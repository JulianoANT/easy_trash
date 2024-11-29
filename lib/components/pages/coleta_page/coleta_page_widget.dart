import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/coleta_page12_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/walkthroughs/coleta_page.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'coleta_page_model.dart';
export 'coleta_page_model.dart';

class ColetaPageWidget extends StatefulWidget {
  const ColetaPageWidget({super.key});

  @override
  State<ColetaPageWidget> createState() => _ColetaPageWidgetState();
}

class _ColetaPageWidgetState extends State<ColetaPageWidget> {
  late ColetaPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColetaPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1500));
      if (valueOrDefault<bool>(currentUserDocument?.loginDescarte, false)
          ? false
          : true) {
        safeSetState(
            () => _model.coletaPageController = createPageWalkthrough(context));
        _model.coletaPageController?.show(context: context);
        await Future.delayed(const Duration(milliseconds: 1000));

        await currentUserReference!.update(createUsersRecordData(
          loginDescarte: true,
        ));
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      floatingActionButton: Opacity(
        opacity: 0.6,
        child: FloatingActionButton(
          onPressed: () async {
            safeSetState(() =>
                _model.coletaPageController = createPageWalkthrough(context));
            _model.coletaPageController?.show(context: context);
          },
          backgroundColor: FlutterFlowTheme.of(context).tertiary,
          elevation: 8.0,
          child: Icon(
            Icons.help_outline_sharp,
            color: FlutterFlowTheme.of(context).textColor,
            size: 36.0,
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeIn,
          width: 411.0,
          height: 861.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.16,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/Green_Minimalist_Modern_Reforestation_Program_Presentation_.png',
                      ).image,
                    ),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/logo_semfundo.png',
                                  width: 116.0,
                                  height: 103.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.959,
                    decoration: BoxDecoration(
                      color: const Color(0x00E0E0E0),
                      borderRadius: BorderRadius.circular(24.0),
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'undsszp2' /* Digite a quantidade aproximada... */,
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Colors.black,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'wapf0bc1' /* Para menos de 1kg utilize 0.2 ... */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Inter',
                                          color: Colors.black,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w300,
                                          fontStyle: FontStyle.italic,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: wrapWithModel(
                    model: _model.coletaPage12Model,
                    updateCallback: () => safeSetState(() {}),
                    child: const ColetaPage12Widget(),
                  ).addWalkthrough(
                    containerK9ndo8we,
                    _model.coletaPageController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: StreamBuilder<UsersRecord>(
                    stream: UsersRecord.getDocument(currentUserReference!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: SpinKitThreeBounce(
                              color: FlutterFlowTheme.of(context).primary,
                              size: 40.0,
                            ),
                          ),
                        );
                      }

                      final containerUsersRecord = snapshot.data!;

                      return Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFCFDFC),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: StreamBuilder<List<DadosColetaRecord>>(
                            stream: queryDadosColetaRecord(),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 40.0,
                                    height: 40.0,
                                    child: SpinKitThreeBounce(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 40.0,
                                    ),
                                  ),
                                );
                              }
                              List<DadosColetaRecord>
                                  buttonDadosColetaRecordList = snapshot.data!;

                              return FFButtonWidget(
                                onPressed: () async {
                                  await DadosColetaRecord.createDoc(
                                          currentUserReference!)
                                      .set(createDadosColetaRecordData(
                                    papel: double.tryParse(_model
                                        .coletaPage12Model
                                        .upapelTextController
                                        .text),
                                    vidro: double.tryParse(_model
                                        .coletaPage12Model
                                        .uvidroTextController
                                        .text),
                                    lata: double.tryParse(_model
                                        .coletaPage12Model
                                        .ulataTextController
                                        .text),
                                    metais: double.tryParse(_model
                                        .coletaPage12Model
                                        .umetaisTextController
                                        .text),
                                    plastico: double.tryParse(_model
                                        .coletaPage12Model
                                        .uplasticoTextController
                                        .text),
                                    createdAt: getCurrentTimestamp,
                                    pCO2total: (double.parse(_model
                                                .coletaPage12Model
                                                .upapelTextController
                                                .text) *
                                            1.30) +
                                        (double.parse(_model.coletaPage12Model
                                                .uplasticoTextController.text) *
                                            6.00) +
                                        (double.parse(_model.coletaPage12Model
                                                .uvidroTextController.text) *
                                            0.20) +
                                        (double.parse(_model.coletaPage12Model.ulataTextController.text) *
                                            1.20) +
                                        (double.parse(_model.coletaPage12Model
                                                .umetaisTextController.text) *
                                            1.60),
                                    pCO2papel: double.parse(_model
                                            .coletaPage12Model
                                            .upapelTextController
                                            .text) *
                                        1.30,
                                    pCO2plastico: double.parse(_model
                                            .coletaPage12Model
                                            .uplasticoTextController
                                            .text) *
                                        6.00,
                                    pCO2lata: double.parse(_model
                                            .coletaPage12Model
                                            .ulataTextController
                                            .text) *
                                        1.20,
                                    pCO2vidro: double.parse(_model
                                            .coletaPage12Model
                                            .uvidroTextController
                                            .text) *
                                        0.20,
                                    pCO2metais: double.parse(_model
                                            .coletaPage12Model
                                            .umetaisTextController
                                            .text) *
                                        1.6,
                                  ));
                                  safeSetState(() {
                                    _model
                                        .coletaPage12Model.upapelTextController
                                        ?.clear();
                                    _model
                                        .coletaPage12Model.uvidroTextController
                                        ?.clear();
                                    _model.coletaPage12Model.ulataTextController
                                        ?.clear();
                                    _model
                                        .coletaPage12Model.umetaisTextController
                                        ?.clear();
                                    _model.coletaPage12Model
                                        .uplasticoTextController
                                        ?.clear();
                                  });
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: const Text('Parabéns👋'),
                                        content: const Text('Coleta Concluída!'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                text: FFLocalizations.of(context).getText(
                                  'uibefxo4' /* Continuar */,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).success,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Lexend',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ).addWalkthrough(
                                buttonA709k8e8,
                                _model.coletaPageController,
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TutorialCoachMark createPageWalkthrough(BuildContext context) =>
      TutorialCoachMark(
        targets: createWalkthroughTargets(context),
        onFinish: () async {
          safeSetState(() => _model.coletaPageController = null);
        },
        onSkip: () {
          return true;
        },
      );
}
