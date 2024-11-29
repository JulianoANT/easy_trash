import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_comp_widget.dart';

// Focus widget keys for this walkthrough
final tabQfzshwyc = GlobalKey();
final calendarYixd29b9 = GlobalKey();
final button18wpmzfd = GlobalKey();
final containerGefxz68h = GlobalKey();

/// agenda
///
/// como usar a agenda
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: tabQfzshwyc,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni:
                  'Escolha entre visualizar sua agenda por mês ou semana.',
              descriptionPasso:
                  'Use os controles para alternar entre períodos facilmente.',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: calendarYixd29b9,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni: 'O calendário ajuda você a organizar suas coletas.',
              descriptionPasso:
                  'Selecione o dia desejado e clique em \"Nova Agenda\" para criar um agendamento.',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: button18wpmzfd,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni:
                  'Após selecionar o dia, escolha o horário de sua preferência.',
              descriptionPasso: 'Pronto, sua coleta será agendada!',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: containerGefxz68h,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughCompWidget(
              passoIni: 'Veja suas coletas agendadas nos cards.',
              descriptionPasso:
                  'Clique sobre elas para marcar como concluídas ou excluí-las, se necessário.',
            ),
          ),
        ],
      ),
    ];
