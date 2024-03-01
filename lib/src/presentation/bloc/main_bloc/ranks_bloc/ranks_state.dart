part of 'ranks_bloc.dart';

class RanksState extends Equatable {
  const RanksState({
    this.ranksStatus = BlocStatus.initial,
    this.ranks = const [],
    this.isChangePosition = false,
  });

  final BlocStatus ranksStatus;
  final List<RanksTiers> ranks;
  final bool isChangePosition;

  RanksState copyWith({
    BlocStatus? ranksStatus,
    List<RanksTiers>? ranks,
    bool? isChangePosition,
  }) =>
      RanksState(
        ranksStatus: ranksStatus ?? this.ranksStatus,
        ranks: ranks ?? this.ranks,
        isChangePosition: isChangePosition ?? this.isChangePosition,
      );

  @override
  List<Object?> get props => [
        ranksStatus,
        ranks,
        isChangePosition,
      ];
}
