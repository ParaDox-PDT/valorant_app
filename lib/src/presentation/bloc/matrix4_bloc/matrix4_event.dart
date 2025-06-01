part of 'matrix4_bloc.dart';

abstract class Matrix4Event extends Equatable {
  const Matrix4Event();
}

class Matrix4ChangePositionEvent extends Matrix4Event {
  const Matrix4ChangePositionEvent({
    required this.dx,
    required this.dy,
  });

  final double dx;
  final double dy;

  @override
  List<Object?> get props => [dx, dy];
}
