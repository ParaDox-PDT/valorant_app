part of 'matrix4_bloc.dart';

class Matrix4State extends Equatable {
  const Matrix4State({
    this.x = 0,
    this.y = 0,
    this.z = 0,
  });

  final double x;
  final double y;
  final double z;

  Matrix4State copyWith({
    double? x,
    double? y,
    double? z,
  }) =>
      Matrix4State(
        x: x ?? this.x,
        y: y ?? this.y,
        z: z ?? this.z,
      );

  @override
  List<Object?> get props => [x, y, z];
}
