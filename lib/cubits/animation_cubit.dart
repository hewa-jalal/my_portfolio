import 'package:bloc/bloc.dart';
import 'package:portfolio/models/switch_animation_model.dart';

class AnimationCubit extends Cubit<AnimationState> {
  AnimationCubit() : super(AnimationState());

  var _isNight = false;

  void changeAnimation() {
    if (_isNight) {
      emit(
        AnimationState(animation: 'switch_day', disableFlare: true),
      );
      Future.delayed(
        Duration(seconds: 1),
        () {
          emit(
            AnimationState(animation: 'day_idle', disableFlare: false),
          );
        },
      );
      _isNight = false;
    } else {
      emit(
        AnimationState(
            animation: 'switch_night', disableFlare: true, isDark: true),
      );
      Future.delayed(Duration(seconds: 1), () {
        emit(
          AnimationState(
            animation: 'night_idle',
            disableFlare: false,
            isDark: true,
          ),
        );
      });
      _isNight = true;
    }
  }
}
