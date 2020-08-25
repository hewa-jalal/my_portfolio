import 'package:equatable/equatable.dart';

class SwitchAnimation extends Equatable {
  final String animation;
  final bool disableFlare;

  SwitchAnimation({this.animation = 'day_idle', this.disableFlare = false});
  @override
  List<Object> get props => [animation, disableFlare];
}
