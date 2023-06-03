import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:fitnesstracker/domain/workouts/i_workout_repository.dart';
import 'package:fitnesstracker/domain/workouts/workout_failures.dart';
import 'package:fitnesstracker/infrastructure/workouts/workout_dto.dart';
import 'package:fitnesstracker/infrastructure/workouts/workout_form_dto.dart';
import 'package:injectable/injectable.dart';

import '../../common/api_urls.dart';
import '../../domain/http/i_http_client.dart';
import '../core/local_database.dart';
import '../http/my_http_client.dart';

@LazySingleton(as: IWorkoutRepository)
@injectable
class WorkoutRepository implements IWorkoutRepository {
  final localDb = getDb();
  final IHttpClient _httpClient;
  WorkoutRepository(this._httpClient);

  @override
  Future<Either<WorkoutFailure, Unit>> create(WorkoutFormDto workout) async {
    Map<String, dynamic> body = {
      'title': workout.title,
      'description': workout.description,
      'duration': workout.duration,
      'step': workout.step,
      'focus': workout.focus,
    };
    try {
      Map<String, File> files = {
        'image1': workout.image1Url!,
        'image2': workout.image2Url!,
      };
      var response = await _httpClient.multiPartRequest(
          ApiUrls.createWorkout, 'POST',
          files: files, body: body);

      if (response.statusCode == 201) {
        return right(unit);
      } else {
        return left(const WorkoutFailure.unableToCreate());
      }
    } catch (e) {
      return left(const WorkoutFailure.unableToCreate());
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> delete(int workoutId) async {
    var response =
        await _httpClient.delete('${ApiUrls.deleteWorkout}$workoutId');

    if (response.statusCode == 200) {
      return right(unit);
    } else {
      return left(const WorkoutFailure.unableToDelete());
    }
  }

  @override
  Future<WorkoutDto> getWorkout(int id) async {
    var response = await _httpClient.get('${ApiUrls.getWorkoutById}$id');

    if (response.statusCode == 200) {
      return WorkoutDto.fromJson(json.decode(response.body));
    } else {
      return const WorkoutDto(
          id: 0,
          title: "",
          description: "",
          duration: 0,
          step: 0,
          focus: "",
          image1Url: "",
          image2Url: "");
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> update(WorkoutFormDto workout) async {
    Map<String, dynamic> body = {
      'title': workout.title,
      'description': workout.description,
      'duration': workout.duration,
      'step': workout.step,
      'focus': workout.focus,
    };
    print(workout);

    try {
      Map<String, File> files = {
        'image1': workout.image1Url!,
        'image2': workout.image2Url!,
      };
      var response = await _httpClient.multiPartRequest(
          "${ApiUrls.updateWorkout}${workout.id}", 'PUT',
          files: files, body: body);

      if (response.statusCode == 201) {
        return right(unit);
      } else {
        return left(const WorkoutFailure.unableToCreate());
      }
    } catch (e) {
      return left(const WorkoutFailure.unableToCreate());
    }
  }

  @override
  Future<List<WorkoutDto>> getAllWorkout() async {
    var response = await _httpClient.get(ApiUrls.getAllWorkout);
    if (response.statusCode == 200) {
      var workouts = (json.decode(response.body) as List)
          .map((e) => WorkoutDto.fromJson(e))
          .toList();
      print(workouts);
      try {
        final _localDb = await localDb;
        await _localDb.delete(workoutTable);
        for (var workout in workouts) {
          await _localDb.insert(workoutTable, {
            'id': workout.id,
            'title': workout.title,
            'description': workout.description,
            'duration': workout.duration,
            'step': workout.step,
            'image': getImageBinary(workout.image1Url),
          });
        }
      } catch (e) {
        print('Error in local db: $e');
      }
      return workouts;
    } else {
      return [];
    }
  }

  getImageBinary(String imageUrl) async {
    try {
      final res = await _httpClient.get(ApiUrls.getImage + imageUrl);
      return res.bodyBytes;
    } catch (e) {
      print(e);
    }
  }
}
