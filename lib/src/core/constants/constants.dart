import 'package:flutter/material.dart';

part 'app_keys.dart';

sealed class Constants {
  const Constants._();

  /// test
  static const baseUrl = 'https://valorant-api.com/v1';

  ///agents
  static const agentsUrl = '/agents';
  static const agentsByIdUrl = '/agents/';

  ///weapons
  static const weaponsUrl = '/weapons';

  ///ranks
  static const ranksUrl =
      '/competitivetiers/03621f52-342b-cf4e-4f86-9350a49c6d04';

  ///sprays
  static const spraysUrl = '/sprays';

  ///player cards
  static const playerCardsUrl = '/playercards';

  ///maps
  static const mapsUrl = '/maps';
  static const mapsByIdUrl = '/maps';

  static GlobalKey<FormState> bottomNavigatorKey = GlobalKey<FormState>();
}

const Duration splashPageAnimationDuration = Duration(milliseconds: 1500);

// The animation display duration.
const Duration animationDuration = Duration(milliseconds: 300);
