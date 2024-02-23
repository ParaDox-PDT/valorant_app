import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:valorant_app/src/core/constants/constants.dart';
import 'package:valorant_app/src/core/either_dart/either.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/agents/agent_detail_response.dart';
import 'package:valorant_app/src/data/models/agents/agents_response.dart';
import 'package:valorant_app/src/data/models/weapons/weapons_response.dart';
import 'package:valorant_app/src/domain/failure/failure.dart';
import 'package:valorant_app/src/domain/failure/server_error.dart';
import 'package:valorant_app/src/domain/repositories/agents/agents_repository.dart';

part 'weapons_repository_impl.dart';

abstract class WeaponsRepository{
  const WeaponsRepository();

  Future<Either<Failure,WeaponsResponse>> getWeapons();

  // Future<Either<Failure,AgentDetail>> getAgentDetail({required String uuid});
}