import 'package:chuck_interceptor/chuck.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:valorant_app/src/data/source/local_source.dart';
import 'package:valorant_app/src/injector_container_part.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/agents_bloc/agent_detail_bloc/agent_detail_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/agents_bloc/agents_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/main_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/map_bloc/map_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/player_cards_bloc/player_cards_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/ranks_bloc/ranks_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/sprays_bloc/sprays_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/weapons_bloc/weapon_detail_bloc/weapon_detail_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/weapons_bloc/weapons_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/splash_bloc/splash_bloc.dart';
import 'package:valorant_app/src/presentation/pages/internet_connection/internet_connection_part.dart';
import 'package:valorant_app/src/presentation/pages/main/agents/agent_detail/agent_detail_page_part.dart';
import 'package:valorant_app/src/presentation/pages/main/agents/agents_page_part.dart';
import 'package:valorant_app/src/presentation/pages/main/main_page_part.dart';
import 'package:valorant_app/src/presentation/pages/main/maps/maps_page_part.dart';
import 'package:valorant_app/src/presentation/pages/main/player_cards/player_cards_page_part.dart';
import 'package:valorant_app/src/presentation/pages/main/ranks/ranks_page_part.dart';
import 'package:valorant_app/src/presentation/pages/main/sprays/sprays_page_part.dart';
import 'package:valorant_app/src/presentation/pages/main/weapons/weapon_detail/weapon_detail_page_part.dart';
import 'package:valorant_app/src/presentation/pages/main/weapons/weapons_page_part.dart';
import 'package:valorant_app/src/presentation/pages/splash/splash_page_part.dart';

part 'name_routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

final localSource = sl<LocalSource>();

final Chuck chuck = Chuck(navigatorKey: rootNavigatorKey);

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Routes.initial,
  routes: <RouteBase>[
    GoRoute(
      path: Routes.initial,
      name: Routes.initial,
      builder: (_, __) => BlocProvider(
        create: (_) => sl<SplashBloc>(),
        child: const SplashPage(),
      ),
    ),

    ///home
    GoRoute(
      name: Routes.home,
      path: Routes.home,
      pageBuilder: (_, state) => CustomTransitionPage(
        transitionDuration: const Duration(milliseconds: 1200),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<MainBloc>(create: (_) => sl<MainBloc>()),
          ],
          child: const MainPage(),
        ),
        transitionsBuilder: (_, animation, __, child) => FadeTransition(
          opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
          child: child,
        ),
      ),
    ),

    /// agents
    GoRoute(
      path: Routes.agents,
      name: Routes.agents,
      builder: (_, __) => BlocProvider(
        create: (_) => sl<AgentsBloc>()
          ..add(
            const AgentsGetAllInfoEvent(),
          ),
        child: const AgentsPage(),
      ),
    ),

    /// agent detail
    GoRoute(
      path: Routes.agentDetail,
      name: Routes.agentDetail,
      builder: (_, __) => BlocProvider(
        create: (_) => sl<AgentDetailBloc>(),
        child: AgentDetailPage(uuid: __.extra! as String),
      ),
    ),

    /// weapons
    GoRoute(
      path: Routes.weapons,
      name: Routes.weapons,
      builder: (_, __) => BlocProvider(
        create: (_) => sl<WeaponsBloc>()
          ..add(
            const WeaponsGetAllEvent(),
          ),
        child: const WeaponsPage(),
      ),
    ),

    /// weapon detail
    GoRoute(
      path: Routes.weaponDetail,
      name: Routes.weaponDetail,
      builder: (_, __) => BlocProvider(
        create: (_) => sl<WeaponDetailBloc>(),
        child: WeaponDetailPage(
            uuid: (__.extra! as Map<String, String>)['uuid']!,
            image: (__.extra! as Map<String, String>)['image']!),
      ),
    ),

    /// ranks
    GoRoute(
      path: Routes.ranks,
      name: Routes.ranks,
      builder: (_, __) => BlocProvider(
        create: (_) => sl<RanksBloc>()
          ..add(
            const RanksGetAllEvent(),
          ),
        child: const RanksPage(),
      ),
    ),

    /// sprays
    GoRoute(
      path: Routes.sprays,
      name: Routes.sprays,
      builder: (_, __) => BlocProvider(
        create: (_) => sl<SpraysBloc>()
          ..add(
            const SpraysGetAllEvent(),
          ),
        child: const SpraysPage(),
      ),
    ),

    /// player cards
    GoRoute(
      path: Routes.playerCards,
      name: Routes.playerCards,
      builder: (_, __) => BlocProvider(
        create: (_) => sl<PlayerCardsBloc>()
          ..add(
            const PlayerCardsGetAllEvent(),
          ),
        child: const PlayerCardsPage(),
      ),
    ),

    /// maps
    GoRoute(
      path: Routes.maps,
      name: Routes.maps,
      builder: (_, __) => BlocProvider(
        create: (_) => sl<MapBloc>()
          ..add(
            const MapGetAllEvent(),
          ),
        child: const MapsPage(),
      ),
    ),

    /// internet connection
    GoRoute(
      path: Routes.internetConnection,
      name: Routes.internetConnection,
      builder: (_, __) => const InternetConnectionPage(),
    ),
  ],
);

class FadePageRoute<T> extends PageRouteBuilder<T> {
  FadePageRoute({required this.builder})
      : super(
          pageBuilder: (
            context,
            animation,
            secondaryAnimation,
          ) =>
              builder(context),
          transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
  final WidgetBuilder builder;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 1000);
}
