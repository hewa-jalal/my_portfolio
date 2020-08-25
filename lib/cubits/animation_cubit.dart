import 'package:bloc/bloc.dart';
import 'package:portfolio/models/switch_animation_model.dart';

class AnimationCubit extends Cubit<SwitchState> {
  AnimationCubit() : super(SwitchState());

  var _isNight = false;

  void changeAnimation() {
    if (_isNight) {
      emit(
        SwitchState(animation: 'switch_day', disableFlare: true),
      );
      Future.delayed(
        Duration(seconds: 1),
        () {
          emit(
            SwitchState(animation: 'day_idle', disableFlare: false),
          );
        },
      );
      _isNight = false;
    } else {
      emit(
        SwitchState(
            animation: 'switch_night', disableFlare: true, isDark: true),
      );
      Future.delayed(Duration(seconds: 1), () {
        emit(
          SwitchState(
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
