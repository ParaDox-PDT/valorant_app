import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:valorant_app/src/core/constants/constants.dart';
import 'package:valorant_app/src/core/either_dart/either.dart';
import 'package:valorant_app/src/core/utils/utils.dart';
import 'package:valorant_app/src/data/models/agents/agent_detail_response.dart';
import 'package:valorant_app/src/data/models/agents/agents_response.dart';
import 'package:valorant_app/src/domain/failure/failure.dart';
import 'package:valorant_app/src/domain/failure/server_error.dart';

part 'agents_repository_impl.dart';

abstract class AgentsRepository{
  const AgentsRepository();

  Future<Either<Failure,Agents>> getAgents();

  Future<Either<Failure,AgentDetail>> getAgentDetail({required String uuid});
}