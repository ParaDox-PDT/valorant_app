import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/src/config/router/app_routes.dart';
import 'package:valorant_app/src/data/models/agents/agents_response.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/domain/repositories/agents/agents_repository.dart';

part 'agents_event.dart';

part 'agents_state.dart';

class AgentsBloc extends Bloc<AgentsEvent, AgentsState> {
  AgentsBloc(this.agentsRepository) : super(const AgentsState()) {
    on<AgentsGetAllInfoEvent>(_onGetAgents);
  }

  final AgentsRepository agentsRepository;

  Future<void> _onGetAgents(
      AgentsGetAllInfoEvent event, Emitter<AgentsState> emit) async {
    final Agents? agents = localSource.getAgents();
    if (agents != null) {
      emit(
        state.copyWith(
          status: BlocStatus.loading,
          agents: agents.data,
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: BlocStatus.loading,
        ),
      );
    }

    final result = await agentsRepository.getAgents();
    result.fold(
      (l) {
        emit(
          state.copyWith(status: BlocStatus.error),
        );
      },
      (r) {
        emit(
          state.copyWith(status: BlocStatus.success, agents: r.data),
        );
        localSource.setAgents(r);
      },
    );
  }
}
