part of 'diet_bloc.dart';

@freezed
class DietState with _$DietState {
  const factory DietState.initial() = Initial;
  const factory DietState.loading() = Loading;
  const factory DietState.notLoading() = NotLoading;
  const factory DietState.listloaded(List<DietDto> diets) = ListLoaded;
  const factory DietState.loaded(DietDto diet) = DietLoaded;
  const factory DietState.failure() = Failure;
}
