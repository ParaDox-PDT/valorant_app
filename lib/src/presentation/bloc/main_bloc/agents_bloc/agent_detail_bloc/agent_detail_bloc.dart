import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant_app/src/data/models/agents/agent_detail_response.dart';
import 'package:valorant_app/src/data/models/bloc_status.dart';
import 'package:valorant_app/src/domain/repositories/agents/agents_repository.dart';

part 'agent_detail_event.dart';

part 'agent_detail_state.dart';

class AgentDetailBloc extends Bloc<AgentDetailEvent, AgentDetailState> {
  AgentDetailBloc({required this.agentsRepository})
      : super(const AgentDetailState()) {
    on<AgentDetailGetInfoEvent>(_onGetAgentDetail);
  }

  final AgentsRepository agentsRepository;

  Future<void> _onGetAgentDetail(
      AgentDetailGetInfoEvent event, Emitter<AgentDetailState> emit) async {
    emit(state.copyWith(agentDetailStatus: BlocStatus.loading));
    final result = await agentsRepository.getAgentDetail(uuid: event.uuid);
    result.fold(
      (l) => emit(state.copyWith(agentDetailStatus: BlocStatus.error)),
      (r) => emit(
        state.copyWith(
            agentDetail: r.data, agentDetailStatus: BlocStatus.success),
      ),
    );
  }
}
