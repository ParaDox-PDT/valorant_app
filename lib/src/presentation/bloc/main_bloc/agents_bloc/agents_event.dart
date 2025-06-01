part of 'agents_bloc.dart';

abstract class AgentsEvent extends Equatable {
  const AgentsEvent();
}

class AgentsGetAllInfoEvent extends AgentsEvent {
  const AgentsGetAllInfoEvent();

  @override
  List<Object> get props => [];
}
