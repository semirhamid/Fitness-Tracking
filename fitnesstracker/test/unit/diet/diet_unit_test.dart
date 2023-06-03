import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/domain/diet/i_diet_repository.dart';
import 'package:fitnesstracker/infrastructure/diet/diet_dto.dart';
import 'package:fitnesstracker/infrastructure/diet/diet_form_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'diet_unit_test.mocks.dart';

@GenerateMocks([IDietRepository])
void main() {
  late MockIDietRepository mockDietRepository;
  late DietFormDto dietFormDto;
  late DietDto dietDto;
  // Diet repository unit test
  // Check for every method in the diet repository

  setUp(() {
    mockDietRepository = MockIDietRepository();
    dietFormDto = DietFormDto(
      id: 1,
      mealDescription: "mealDescription",
      mealName: "mealName",
      mealType: "Lunch",
      imageUrl: File(Uri.parse(
              'file:///C:/Users/semha/Videos/localhost_5173_product_details_84.png')
          .path),
          
    );
    dietDto = const DietDto(
      id: 1,
      mealDescription: "mealDescription",
      mealName: "mealName",
      mealType: "Lunch",
      imageUrl: 'image1Url',
    );
  });

  group(
    'DietRepository',
    () {
      test(
        'should return unit when create is successful',
        () async {
          when(mockDietRepository.create(dietFormDto)).thenAnswer(
            (_) async => right(unit),
          );
          final result = await mockDietRepository.create(dietFormDto);
          expect(result, right(unit));
        },
      );

      test(
        'should return unit when delete is successful',
        () async {
          when(mockDietRepository.delete(1)).thenAnswer(
            (_) async => right(unit),
          );
          final result = await mockDietRepository.delete(1);
          expect(result, right(unit));
        },
      );

      test(
        'should return unit when update is successful',
        () async {
          when(mockDietRepository.update(dietFormDto))
              .thenAnswer((_) async => right(unit));
          final result = await mockDietRepository.update(dietFormDto);
          expect(result, right(unit));
        },
      );

      test(
        'should return unit when getDiets is successful',
        () async {
          when(mockDietRepository.getAllDiet())
              .thenAnswer((_) async => []);
          final result = await mockDietRepository.getAllDiet();
          expect(result, []);
        },
      );

      test(
        'should return unit when getDiet is successful',
        () async {
          when(mockDietRepository.getDiet(1))
              .thenAnswer((_) async => dietDto);
          final result = await mockDietRepository.getDiet(1);
          expect(result, dietDto);
        },
      );
    },
  );
}
