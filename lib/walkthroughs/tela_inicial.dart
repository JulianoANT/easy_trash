import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_comp_widget.dart';

// Focus widget keys for this walkthrough
final text6g3iwcrt = GlobalKey();
final textYo0p3230 = GlobalKey();
final textZw41h83x = GlobalKey();
final rowNonurnz2 = GlobalKey();
final pageView0jispvpu = GlobalKey();
final circleImageUlempl7u = GlobalKey();
final floatingActionButtonH85evu98 = GlobalKey();

/// telaInicial
///
/// como usar o menu
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: text6g3iwcrt,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni:
                  'Visualize aqui as coletas que não foram concluídas no dia agendado.',
              descriptionPasso:
                  'Não deixe acumular! Mantenha sua agenda em dia e contribua para um mundo mais sustentável.',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: textYo0p3230,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni: 'Aqui você encontra suas coletas programadas.',
              descriptionPasso:
                  'Agendar suas coletas é uma ótima forma de ajudar o meio ambiente e garantir o descarte correto dos resíduos!',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: textZw41h83x,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni:
                  'Nesta seção, você pode acompanhar as coletas que já foram marcadas como concluídas na sua agenda.',
              descriptionPasso:
                  'Um passo a mais na sua jornada pela sustentabilidade!',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: rowNonurnz2,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni: 'Veja aqui a sua pegada de carbono!',
              descriptionPasso:
                  'Ela mostra o impacto ambiental das suas atividades diárias, ajudando você a acompanhar e reduzir as emissões de gases de efeito estufa.',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: pageView0jispvpu,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni:
                  'Encontre dicas práticas para reciclar e descarte correto dos resíduos.',
              descriptionPasso:
                  'Clique na primeira página para acessar o nosso site e obter ainda mais informações!',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: circleImageUlempl7u,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni:
                  'Clique na sua foto de perfil para acessar a página de configurações.',
              descriptionPasso:
                  'Personalize suas informações e ajuste o app do jeito que você precisa!',
            ),
          ),
        ],
      ),

      /// Step 7
      TargetFocus(
        keyTarget: floatingActionButtonH85evu98,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni:
                  'Se tiver dùvidas você pode consultar esse tutorial de novo clicando aqui!',
              descriptionPasso: '❤️',
            ),
          ),
        ],
      ),
    ];
