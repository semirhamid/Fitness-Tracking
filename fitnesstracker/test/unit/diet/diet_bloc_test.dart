import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/application/diet/bloc/diet_bloc.dart';
import 'package:fitnesstracker/domain/diet/diet_failures.dart';
import 'package:fitnesstracker/domain/diet/i_diet_repository.dart';
import 'package:fitnesstracker/infrastructure/diet/diet_dto.dart';
import 'package:fitnesstracker/infrastructure/diet/diet_form_dto.dart';
import 'package:fitnesstracker/infrastructure/diet/diet_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'diet_bloc_test.mocks.dart';



@GenerateMocks([IDietRepository, DietFormDto, DietDto])
void main() {
  late MockIDietRepository mockDietRepository;
  late DietBloc dietBloc;
  late DietFormDto dietFormDto;
  late DietDto dietDto;
  late List<DietDto> dietDtoList;

  setUp(() {
    mockDietRepository = MockIDietRepository();
    dietBloc = DietBloc(mockDietRepository);
    dietFormDto = DietFormDto(
      id: 1,
      mealName: 'title',
      mealDescription: 'description',
      mealType: 'focus',
      imageUrl: File(Uri.parse(
              'file:///C:/Users/semha/Videos/localhost_5173_product_details_84.png')
          .path),
    );
    dietDto = const DietDto(
      id: 1,
      mealName: 'title',
      mealDescription: 'description',
      mealType: 'focus',
      imageUrl: 'image1Url',
    );
    dietDtoList = [dietDto];
    
  });
  //this is diet bloc test
  group("this is bloc test for dietbloc", () {
    blocTest('emits [] when nothing is added',
        build: () => DietBloc(mockDietRepository), expect: () => []);
  });

  blocTest<DietBloc, DietState>(
    'yields [getDiets] when the getDiets is added',
    build: () {
      when(mockDietRepository.getAllDiet()).thenAnswer(
        (_) async =>[]
      );
      return dietBloc;
    },
    act: (bloc) => bloc.add(const DietEvent.getDiets()),
    expect: () => [
        const DietState.listloaded([])
    ],
    
  );

  blocTest<DietBloc, DietState>(
    'yields [create] when the create is added',
    build: () {
      when(mockDietRepository.create(dietFormDto))
          .thenAnswer((_) async => right(unit));
      return dietBloc;
    },
    act: (bloc) => bloc.add(DietEvent.create(dietFormDto)),
    expect: () => [
      const DietState.loading(),
    ],
    
  );

  blocTest<DietBloc, DietState>(
    'yields [loading] when the update is successful',
    build: () {
      when(mockDietRepository.update(dietFormDto))
          .thenAnswer((_) async => right(unit));
      return dietBloc;
    },
    act: (bloc) => bloc.add(DietEvent.update(dietFormDto)),
    expect: () => [
      const DietState.loading(),
    ],
    
  );

  blocTest<DietBloc, DietState>(
    'yields [loading] when the delete is successful',
    build: () {
      when(mockDietRepository.delete(1))
          .thenAnswer((_) async => right(unit));
      return dietBloc;
    },
    act: (bloc) => bloc.add(const DietEvent.delete(1)),
    expect: () => [
      const DietState.loading(),
    ],
    
  );

  blocTest<DietBloc, DietState>(
    'yields [loading, loaded] when the getDiet is successful',
    build: () {
      when(mockDietRepository.getDiet(1))
          .thenAnswer((_) async => dietDto);
      return dietBloc;
    },
    act: (bloc) => bloc.add(const DietEvent.getDiet(1)),
    expect: () => [
      const DietState.loading(),
      DietState.loaded(dietDto),
    ],
    
  );

  

}
