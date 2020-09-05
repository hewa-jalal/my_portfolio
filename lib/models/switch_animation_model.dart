import 'package:equatable/equatable.dart';

class AnimationState extends Equatable {
  final String animation;
  final bool disableFlare;
  final bool isDark;

  AnimationState({
    this.animation = 'day_idle',
    this.disableFlare = false,
    this.isDark = false,
  });
  @override
  List<Object> get props => [animation, disableFlare];
}
