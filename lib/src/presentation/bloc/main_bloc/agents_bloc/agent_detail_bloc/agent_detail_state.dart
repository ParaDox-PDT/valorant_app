part of 'agent_detail_bloc.dart';

class AgentDetailState extends Equatable {
  const AgentDetailState({
    this.agentDetailStatus = BlocStatus.initial,
    this.agentDetail,
  });

  final BlocStatus agentDetailStatus;

  final AgentDetailData? agentDetail;

  AgentDetailState copyWith({
    BlocStatus? agentDetailStatus,
    AgentDetailData? agentDetail,
  }) =>
      AgentDetailState(
        agentDetailStatus: agentDetailStatus ?? this.agentDetailStatus,
        agentDetail: agentDetail ?? this.agentDetail,
      );

  @override
  List<Object?> get props => [
        agentDetailStatus,
        agentDetail,
      ];
}
