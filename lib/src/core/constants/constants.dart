import 'package:flutter/material.dart';

part 'app_keys.dart';

sealed class Constants{
  const Constants._();

  static GlobalKey<FormState> bottomNavigatorKey = GlobalKey<FormState>();
}

const Duration splashPageAnimationDuration = Duration(milliseconds: 1500);

// The animation display duration.
const Duration animationDuration = Duration(milliseconds: 300);
