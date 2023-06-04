import 'package:fitnesstracker/domain/workouts/local_workout.dart';


abstract class IDatabaseHelperInterface {
  Future<int> insertWorkout(WorkoutLocal workout);
  Future<List<WorkoutLocal>> getWorkouts();
  Future<int> updateWorkout(WorkoutLocal workout);
  Future<int> deleteWorkout(int id);
  Future<WorkoutLocal?> getWorkoutById(int id);
}
