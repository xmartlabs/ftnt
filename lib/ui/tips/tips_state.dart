part of 'tips_cubit.dart';

@freezed
class TipsBaseState with _$TipsBaseState {
  const factory TipsBaseState.state({
    @Default([]) required List<Tip> tips,
  }) = _TipsState;
}
