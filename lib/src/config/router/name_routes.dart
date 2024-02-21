part of 'app_routes.dart';

sealed class Routes{
  Routes._();

  static const String initial = '/';
  static const String internetConnection = '/internet_connection';

  // main
  static const String home = '/home';

  //agents
  static const String agents = '/agents';
  static const String agentDetail = '/agent_detail';

}