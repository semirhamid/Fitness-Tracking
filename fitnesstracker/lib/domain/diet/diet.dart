import 'package:freezed_annotation/freezed_annotation.dart';

part 'diet.freezed.dart';
@freezed
abstract class Diet with _$Diet{
  const factory Diet({
    required int id,
    required String mealType,
    required String mealName,
    required String mealDescription,
    required String imageUrl,
  }) = _Diet;
}
