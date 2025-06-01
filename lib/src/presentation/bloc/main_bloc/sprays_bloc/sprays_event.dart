part of 'sprays_bloc.dart';

abstract class SpraysEvent extends Equatable {
  const SpraysEvent();
}

class SpraysGetAllEvent extends SpraysEvent {
  const SpraysGetAllEvent();

  @override
  List<Object?> get props => [];
}
