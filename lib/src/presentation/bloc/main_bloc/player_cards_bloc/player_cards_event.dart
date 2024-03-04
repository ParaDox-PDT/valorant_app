part of 'player_cards_bloc.dart';

abstract class PlayerCardsEvent extends Equatable {
  const PlayerCardsEvent();
}

class PlayerCardsGetAllEvent extends PlayerCardsEvent {
  const PlayerCardsGetAllEvent();

  @override
  List<Object?> get props => [];
}
