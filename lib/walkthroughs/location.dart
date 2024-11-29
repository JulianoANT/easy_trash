import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthroughmap_widget.dart';

// Focus widget keys for this walkthrough
final googleMap49g1yho1 = GlobalKey();

/// location
///
/// como usar o map
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: googleMap49g1yho1,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkthroughmapWidget(
              passoIni: 'Veja os pontos de coleta mais próximos de você!',
              descriptionPasso: 'Clique nos icones para mais informações.',
            ),
          ),
        ],
      ),
    ];
