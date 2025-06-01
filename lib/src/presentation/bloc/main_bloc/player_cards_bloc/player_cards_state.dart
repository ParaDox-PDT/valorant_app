part of 'player_cards_bloc.dart';

class PlayerCardsState extends Equatable {
  const PlayerCardsState({
    this.playerCardsStatus = BlocStatus.initial,
    this.playerCards = const [],
  });

  final BlocStatus playerCardsStatus;
  final List<PlayerCardsData> playerCards;

  PlayerCardsState copyWith({
    BlocStatus? playerCardsStatus,
    List<PlayerCardsData>? playerCards,
  }) =>
      PlayerCardsState(
        playerCardsStatus: playerCardsStatus ?? this.playerCardsStatus,
        playerCards: playerCards ?? this.playerCards,
      );

  @override
  List<Object?> get props => [
        playerCardsStatus,
        playerCards,
      ];
}
