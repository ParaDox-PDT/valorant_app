import 'package:chuck_interceptor/chuck.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:valorant_app/src/data/source/local_source.dart';
import 'package:valorant_app/src/injector_container.dart';

part 'name_routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey = GlobalKey<
    ScaffoldMessengerState>();

final localSource = sl<LocalSource>();

final Chuck chuck = Chuck(navigatorKey: rootNavigatorKey);

final GoRouter router = GoRouter(navigatorKey: rootNavigatorKey,
    initialLocation: Routes.initial,
    routes: <RouteBase>[
      GoRoute(
        path: Routes.initial,
        name: Routes.initial,
        builder: (_, __) =>
            BlocProvider(
              create: (_) => sl<SplashBloc>(), child: const SplashPage(),),
      )
    ])