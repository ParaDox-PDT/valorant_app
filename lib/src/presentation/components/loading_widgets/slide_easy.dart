import 'package:flutter/material.dart';

class SlideEasy extends StatefulWidget {
  const SlideEasy({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<SlideEasy> createState() => _SlideEasyState();
}

class _SlideEasyState extends State<SlideEasy>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: (60 / 72 * 1000).toInt()),
      vsync: this,
    )..repeat(reverse: true);
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0, -0.12),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => SlideTransition(
        position: _offsetAnimation,
        child: widget.child,
      );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
