import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'termo_privacidade_model.dart';
export 'termo_privacidade_model.dart';

class TermoPrivacidadeWidget extends StatefulWidget {
  const TermoPrivacidadeWidget({
    super.key,
    required this.email,
    required this.senha,
    required this.confimSenha,
  });

  final String? email;
  final String? senha;
  final String? confimSenha;

  @override
  State<TermoPrivacidadeWidget> createState() => _TermoPrivacidadeWidgetState();
}

class _TermoPrivacidadeWidgetState extends State<TermoPrivacidadeWidget> {
  late TermoPrivacidadeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermoPrivacidadeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(
              0.0,
              -3.0,
            ),
          )
        ],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('privacyPolicy');

                  Navigator.pop(context);
                },
                text: FFLocalizations.of(context).getText(
                  'fgyh7t26' /* Ler Política de Privacidade */,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 61.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).grayDark,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lexend Deca',
                        color: const Color(0xFFDADCDD),
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                  elevation: 0.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0.0,
                  ),
                ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                GoRouter.of(context).prepareAuthEvent(true);
                if (widget.senha! != widget.confimSenha!) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Passwords don\'t match!',
                      ),
                    ),
                  );
                  return;
                }

                final user = await authManager.createAccountWithEmail(
                  context,
                  widget.email!,
                  widget.senha!,
                );
                if (user == null) {
                  return;
                }

                Navigator.pop(context);
                if (Navigator.of(context).canPop()) {
                  context.pop();
                }
                context.pushNamedAuth(
                  'completeProfile',
                  context.mounted,
                  ignoreRedirect: true,
                );
              },
              text: FFLocalizations.of(context).getText(
                'j7s4nwy3' /* Concordar */,
              ),
              options: FFButtonOptions(
                width: double.infinity,
                height: 60.0,
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0xFF12E34E),
                textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
                elevation: 2.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: FFLocalizations.of(context).getText(
                  'm3zsyqv3' /* Recusar */,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFFF43B3E),
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                  elevation: 2.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
