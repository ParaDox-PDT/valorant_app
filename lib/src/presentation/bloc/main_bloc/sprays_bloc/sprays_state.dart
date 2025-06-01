part of 'sprays_bloc.dart';

class SpraysState extends Equatable {
  const SpraysState({
    this.sprays = const [],
    this.spraysStatus = BlocStatus.initial,
  });

  final BlocStatus spraysStatus;
  final List<SpraysData> sprays;

  SpraysState copyWith({
    BlocStatus? spraysStatus,
    List<SpraysData>? sprays,
  }) =>
      SpraysState(
        spraysStatus: spraysStatus ?? this.spraysStatus,
        sprays: sprays ?? this.sprays,
      );

  @override
  List<Object?> get props => [
        spraysStatus,
        sprays,
      ];
}
