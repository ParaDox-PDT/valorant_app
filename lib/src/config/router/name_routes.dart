part of 'app_routes.dart';

sealed class Routes {
  Routes._();

  static const String initial = '/';
  static const String internetConnection = '/internet_connection';

  // main
  static const String home = '/home';

  //agents
  static const String agents = '/agents';
  static const String agentDetail = '/agent_detail';

  //weapons
  static const String weapons = '/weapons';
  static const String weaponDetail = '/weapon_detail';

  //ranks
  static const String ranks = '/ranks';

  //sprays
  static const String sprays = '/sprays';

  //player cards
  static const String playerCards = '/player_cards';
}
