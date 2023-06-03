part of 'diet_bloc.dart';

@freezed
class DietEvent with _$DietEvent {
  const factory DietEvent.initial() = _Initial;
  const factory DietEvent.create(DietFormDto diet) = Create;
  const factory DietEvent.delete(int dietId) = Delete;
  const factory DietEvent.getDiet(int id) = GetDiet;
  const factory DietEvent.getDiets() = GetDiets;
  const factory DietEvent.update(DietFormDto diet) = Update;
}