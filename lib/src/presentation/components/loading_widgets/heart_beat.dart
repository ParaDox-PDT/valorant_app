import 'package:flutter/material.dart';

/// A widget which adds a heartbeat effect to its contents.
class HeartBeat extends StatefulWidget {
  const HeartBeat({
    super.key,
    this.child,
    this.beatsPerMinute = 50,
  });

  /// The item to apply the heartbeat effect to.
  final Widget? child;

  /// The number of beats per minutes. Defaults to 70.
  final int beatsPerMinute;

  @override
  State<StatefulWidget> createState() => _HeartBeatState();
}

class _HeartBeatState extends State<HeartBeat>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _beatForward, _beatBackward;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 60000 ~/ widget.beatsPerMinute > 0
            ? 60000 ~/ widget.beatsPerMinute
            : 857,
      ),
    )..addListener(() {
        setState(() {});
      });

    // Equivalent to zooming in the child at the specified interval.
    _beatForward = Tween(begin: 0.9, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.70,
          1,
          curve: Curves.easeIn,
        ),
      ),
    );

    // Equivalent to zooming out the child at the specified interval.
    _beatBackward = Tween(begin: 1, end: 0.8).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.8,
          1,
          curve: Curves.easeIn,
        ),
      ),
    );

    // Since a heartbeat, so repeats infinitely.
    _controller
      ..forward()
      ..repeat();
  }

  @override
  void didUpdateWidget(HeartBeat oldWidget) {
    _controller
      ..reset()
      ..forward()
      ..repeat();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Transform.scale(
        scale: _beatForward.value,
        child: Transform.scale(
          scale: _beatBackward.value,
          child: widget.child,
        ),
      );
}
