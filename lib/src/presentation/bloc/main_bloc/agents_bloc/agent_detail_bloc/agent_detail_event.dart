part of 'agent_detail_bloc.dart';

abstract class AgentDetailEvent extends Equatable {
  const AgentDetailEvent();
}

class AgentDetailGetInfoEvent extends AgentDetailEvent {
  const AgentDetailGetInfoEvent({required this.uuid});

  final String uuid;

  @override
  List<Object?> get props => [uuid];
}
