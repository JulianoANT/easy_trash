import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_comp_widget.dart';

// Focus widget keys for this walkthrough
final containerK9ndo8we = GlobalKey();
final buttonA709k8e8 = GlobalKey();

/// coletaPage
///
/// como usa a coleta
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: containerK9ndo8we,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni:
                  'Digite a quantidade aproximada de cada resíduo descartado.',
              descriptionPasso:
                  'Esses dados ajudam na gestão e no cálculo da sua pegada de carbono.',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: buttonA709k8e8,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni:
                  'Após preencher os campos, clique em \"Continuar\" para salvar sua coleta e concluir o registro!',
              descriptionPasso: '.',
            ),
          ),
        ],
      ),
    ];
