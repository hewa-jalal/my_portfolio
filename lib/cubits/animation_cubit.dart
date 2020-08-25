import 'package:bloc/bloc.dart';
import 'package:portfolio/models/switch_animation_model.dart';

class AnimationCubit extends Cubit<SwitchAnimation> {
  AnimationCubit() : super(SwitchAnimation());

  var _isNight = false;

  void changeAnimation() {
    if (_isNight) {
      emit(SwitchAnimation(animation: 'switch_day', disableFlare: true));
      Future.delayed(Duration(seconds: 1), () {
        emit(SwitchAnimation(animation: 'day_idle', disableFlare: false));
      });
      _isNight = false;
    } else {
      emit(SwitchAnimation(animation: 'switch_night', disableFlare: true));
      Future.delayed(Duration(seconds: 1), () {
        emit(SwitchAnimation(animation: 'night_idle', disableFlare: false));
      });
      _isNight = true;
    }
  }
}
