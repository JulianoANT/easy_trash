import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_comp_widget.dart';

// Focus widget keys for this walkthrough
final rowQ26rdwyt = GlobalKey();
final rowPgd9bscv = GlobalKey();
final rowC5k0ewke = GlobalKey();
final column6j2sgg50 = GlobalKey();

/// dashboard
///
/// como usar a dashboard
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: rowQ26rdwyt,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni:
                  'Veja a quantidade de CO₂ gerada pelas suas coletas no mês.',
              descriptionPasso:
                  'Isso ajuda você a entender o impacto dos resíduos descartados no período.',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: rowPgd9bscv,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni:
                  'Acompanhe o total de CO₂ gerado pelas suas coletas ao longo do ano.',
              descriptionPasso:
                  'Tenha uma visão mais ampla do seu impacto ambiental.',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: rowC5k0ewke,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni: 'Filtre e visualize seu CO₂ em um período específico.',
              descriptionPasso: 'Veja em detalhas seu Carbono gerado.',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: column6j2sgg50,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni: 'Confira a emissão gerada por cada tipo de resíduo.',
              descriptionPasso: 'Descubra qual deles você descartou mais!',
            ),
          ),
        ],
      ),
    ];
