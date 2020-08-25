import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  final String animation;
  final bool disableFlare;
  final bool isDark;

  SwitchState({
    this.animation = 'day_idle',
    this.disableFlare = false,
    this.isDark = false,
  });
  @override
  List<Object> get props => [animation, disableFlare];
}
