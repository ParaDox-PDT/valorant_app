import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'matrix4_event.dart';

part 'matrix4_state.dart';

class Matrix4Bloc extends Bloc<Matrix4Event, Matrix4State> {
  Matrix4Bloc() : super(const Matrix4State()) {
    on<Matrix4ChangePositionEvent>(_onChangePosition);
  }

  void _onChangePosition(
      Matrix4ChangePositionEvent event, Emitter<Matrix4State> emit) {
    double x = state.x;
    double y = state.y;

    y = y - event.dy / 100;
    x = x + event.dx / 100;

    emit(state.copyWith(x: x, y: y));
  }
}
