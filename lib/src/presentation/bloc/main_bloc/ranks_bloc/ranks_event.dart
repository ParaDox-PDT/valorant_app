part of 'ranks_bloc.dart';

abstract class RanksEvent extends Equatable {
  const RanksEvent();
}

class RanksGetAllEvent extends RanksEvent {
  const RanksGetAllEvent();

  @override
  List<Object> get props => [];
}

class RanksChangePositionEvent extends RanksEvent {
  const RanksChangePositionEvent();

  @override
  List<Object> get props => [];
}
