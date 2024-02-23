part of 'weapons_bloc.dart';

abstract class WeaponsEvent extends Equatable {
  const WeaponsEvent();
}

class WeaponsGetAllEvent extends WeaponsEvent {
  const WeaponsGetAllEvent();

  @override
  List<Object?> get props => [];
}
