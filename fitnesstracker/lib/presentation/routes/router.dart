import 'package:fitnesstracker/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:fitnesstracker/domain/workouts/workout.dart';
import 'package:fitnesstracker/presentation/admin/admin_layout.dart';
import 'package:fitnesstracker/presentation/admin/workout/workout.dart';
import 'package:fitnesstracker/presentation/splash/splash_page.dart';
import 'package:go_router/go_router.dart';

import '../../domain/diet/diet.dart';
import '../../infrastructure/diet/diet_dto.dart';
import '../../infrastructure/diet/diet_form_dto.dart';
import '../../infrastructure/plan/plan_dto.dart';
import '../../infrastructure/plan/plan_form_dto.dart';
import '../../infrastructure/workouts/workout_dto.dart';
import '../../infrastructure/workouts/workout_form_dto.dart';
import '../admin/diet/diet_detail_screen.dart';
import '../admin/diet/diet_upsert_screen.dart';
import '../admin/workout/upsertWorkout.dart';
import '../admin/workout/workout_detail.dart';
import '../admin/diet/diet_list_screen.dart';
import '../plan/plan_detail_screen.dart';
import '../plan/plan_list_screen.dart';
import '../plan/plan_type_screen.dart';
import '../plan/plan_upsert_screen.dart';
import '../register/register_page.dart';
import '../sign_in/sign_in_page.dart';

class AppRouter {
  static const String splashRoute = '/';
  static const String signInRoute = '/signin';
  static const String registerRoute = '/register';
  static const String userhome = '/userhome';
  static const String adminhome = '/adminhome';

  // admin screens
  static const String workoutmanagement = '/workoutmanagement';
  static const String workoutdetails = '/workoutdetails/:workoutId';

  static const String workoutUpsert = '/workoutmanagement/upsert';

  static const String dietUpsertRoute = '/dietUpsertRoute';
  static const String dietListScreenRoute = '/dietListScreenRoute';
  static const String dietDetailRoute = '/dietDetailRoute';

  static const String planListRoute = '/planListRoute';
  static const String planUpsertRoute = '/planUpsertRoute';
  static const String planDetailRoute = '/planDetailRoute';
  static const String planTypeScreen = '/planTypeScreen';

  final router = GoRouter(
    initialLocation: workoutmanagement,
    routes: [
      GoRoute(
        path: splashRoute,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: signInRoute,
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: registerRoute,
        builder: (context, state) => const RegistrationPage(),
      ),
      GoRoute(
        path: userhome,
        builder: (context, state) => const SignInPage(),
      ),
      GoRoute(
        path: adminhome,
        builder: (context, state) => const AdminLayout(),
      ),
      GoRoute(
          path: workoutmanagement,
          builder: (context, state) => const WorkoutManagement()),
      GoRoute(
          path: workoutdetails,
          builder: (context, state) =>
              WorkoutDetailScreen(state.extra as WorkoutDto)),
      GoRoute(
        path: workoutUpsert,
        builder: (context, state) =>
            UpsertWorkout(state.extra as WorkoutFormDto?),
      ),
      GoRoute(
        path: dietListScreenRoute,
        builder: (context, state) => const DietListScreen(),
      ),
      GoRoute(
        path: dietUpsertRoute,
        builder: (context, state) =>
            DietUpsertScreen(state.extra as DietFormDto?),
      ),
      GoRoute(
        path: dietDetailRoute,
        builder: (context, state) => DietDetailScreen(state.extra as Diet),
      ),
      GoRoute(
        path: planListRoute,
        builder: (context, state) => const PlanListScreen(),
      ),
      GoRoute(
        path: planUpsertRoute,
        builder: (context, state) =>
            PlanUpsertScreen(state.extra as PlanFormDto?),
      ),
      GoRoute(
        path: planDetailRoute,
        builder: (context, state) => PlanDetailScreen(state.extra as PlanDto),
      ),
      GoRoute(
        path: planTypeScreen,
        builder: (context, state) => PlanTypeScreen(state.extra as PlanDto),
      )
    ],
  );
}
