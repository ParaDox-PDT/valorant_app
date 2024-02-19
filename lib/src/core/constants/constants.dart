import 'package:flutter/material.dart';

part 'app_keys.dart';

sealed class Constants{
  const Constants._();

  /// test
  static const baseUrl = 'https://valorant-api.com/v1';


  ///agents
  static const agentsUrl = '/agents';
  static const agentsByIdUrl = '/agents/';


  static GlobalKey<FormState> bottomNavigatorKey = GlobalKey<FormState>();
}

const Duration splashPageAnimationDuration = Duration(milliseconds: 1500);

// The animation display duration.
const Duration animationDuration = Duration(milliseconds: 300);
