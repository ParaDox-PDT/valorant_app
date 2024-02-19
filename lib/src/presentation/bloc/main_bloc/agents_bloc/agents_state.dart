part of 'agents_bloc.dart';

class AgentsState extends Equatable {
  const AgentsState({
    this.status = BlocStatus.initial,
    this.agents = const [],
  });

  final BlocStatus status;

  final List<AgentsData> agents;

  AgentsState copyWith({
    BlocStatus? status,
    List<AgentsData>? agents,
  }) =>
      AgentsState(
        status: status ?? this.status,
        agents: agents ?? this.agents,
      );

  @override
  List<Object?> get props => [
        agents,
        status,
      ];
}
