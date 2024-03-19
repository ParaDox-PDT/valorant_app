import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_retry_plus/dio_retry_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:valorant_app/src/core/constants/constants.dart';
import 'package:valorant_app/src/domain/repositories/agents/agents_repository.dart';
import 'package:valorant_app/src/domain/repositories/maps/maps_repository.dart';
import 'package:valorant_app/src/domain/repositories/player_cards/player_cards_repository.dart';
import 'package:valorant_app/src/domain/repositories/ranks/ranks_repository.dart';
import 'package:valorant_app/src/domain/repositories/sprays/sprays_repository.dart';
import 'package:valorant_app/src/domain/repositories/weapons/weapons_repository.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/agents_bloc/agent_detail_bloc/agent_detail_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/agents_bloc/agents_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/map_bloc/map_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/player_cards_bloc/player_cards_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/ranks_bloc/ranks_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/sprays_bloc/sprays_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/weapons_bloc/weapon_detail_bloc/weapon_detail_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/main_bloc/weapons_bloc/weapons_bloc.dart';
import 'package:valorant_app/src/presentation/bloc/video_player_bloc/video_player_bloc.dart';
import 'package:valorant_app/src/presentation/components/cupertino_back/cupertino_back_gesture.dart';
import 'package:valorant_app/src/presentation/pages/internet_connection/internet_connection_part.dart';

import 'config/router/app_routes.dart';

import 'core/platform/network_info.dart';
import 'data/source/local_source.dart';
import 'presentation/bloc/main_bloc/main_bloc.dart';
import 'presentation/bloc/matrix4_bloc/matrix4_bloc.dart';
import 'presentation/bloc/splash_bloc/splash_bloc.dart';

part 'injector_container.dart';