import 'package:flutter/material.dart';

import 'staggered_dots_wave.dart';

class ModalProgressHUD extends StatelessWidget {
  const ModalProgressHUD({
    super.key,
    this.inAsyncCall = false,
    this.color = Colors.transparent,
    this.progressIndicator = const StaggeredDotsWave(
      size: 36,
    ),
    this.offset,
    this.dismissible = false,
    required this.child,
  });

  final bool inAsyncCall;
  final Color color;
  final Widget progressIndicator;
  final Offset? offset;
  final bool dismissible;
  final Widget child;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Positioned.fill(child: child),
          if (inAsyncCall)
            Positioned.fill(
              child: ModalBarrier(dismissible: dismissible, color: color),
            ),
          if (inAsyncCall) Align(child: progressIndicator),
        ],
      );
}
