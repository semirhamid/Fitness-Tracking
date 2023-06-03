import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/diet/i_diet_repository.dart';
import '../../../infrastructure/diet/diet_dto.dart';
import '../../../infrastructure/diet/diet_form_dto.dart';

part 'diet_event.dart';
part 'diet_state.dart';
part 'diet_bloc.freezed.dart';

@injectable
class DietBloc extends Bloc<DietEvent, DietState> {
  final IDietRepository _dietRepository;
  DietBloc(this._dietRepository) : super(const DietState.initial()) {
    on<DietEvent>((event, emit) async {
      await event.map(
        initial: (e) async {
          emit(const DietState.loading());
          var result = await _dietRepository.getAllDiet();
          emit(DietState.listloaded(result));
        },
        create: (e) async {
          emit(const DietState.loading());
          await _dietRepository
              .create(e.diet)
              .whenComplete(() => emit(const DietState.loading()));
        },
        delete: (e) async {
          await _dietRepository.delete(e.dietId);
          emit(const DietState.loading());
        },
        getDiet: (e) async {
          emit(const DietState.loading());
          var result = await _dietRepository.getDiet(e.id);
          emit(DietState.loaded(result));
        },
        update: (e) async {
          emit(const DietState.loading());
          await _dietRepository.update(e.diet);
        },
        getDiets: (e) async {
          var result = await _dietRepository.getAllDiet();
          emit(DietState.listloaded(result));
        },
      );
    });
  }
}
