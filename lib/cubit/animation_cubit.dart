import 'package:bloc/bloc.dart';

class AnimationCubit extends Cubit<String> {
  AnimationCubit() : super('day_idle');

  var _isNight = false;
  var _disableFlare = false;

  void changeAnimation() {
    if (_isNight) {
      emit('switch_day');
      _disableFlare = true;
      Future.delayed(Duration(seconds: 1), () {
        emit('day_idle');
        _disableFlare = false;
      });
      _isNight = false;
    } else {
      emit('switch_night');
      _disableFlare = true;
      Future.delayed(Duration(seconds: 1), () {
        emit('night_idle');
        _disableFlare = false;
      });
      _isNight = true;
    }
  }
}
