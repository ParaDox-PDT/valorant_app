part of 'ranks_bloc.dart';

class RanksState extends Equatable {
  const RanksState({
    this.ranksStatus = BlocStatus.initial,
    this.ranks = const [],
  });

  final BlocStatus ranksStatus;
  final List<RanksTiers> ranks;

  RanksState copyWith({
    BlocStatus? ranksStatus,
    List<RanksTiers>? ranks,
  }) =>
      RanksState(
        ranksStatus: ranksStatus ?? this.ranksStatus,
        ranks: ranks ?? this.ranks,
      );

  @override
  List<Object?> get props => [
        ranksStatus,
        ranks,
      ];
}
