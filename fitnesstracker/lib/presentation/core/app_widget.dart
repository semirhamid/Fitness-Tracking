import 'package:fitnesstracker/application/auth/auth_bloc.dart';
import 'package:fitnesstracker/application/plan/plan_bloc/plan_bloc.dart';
import 'package:fitnesstracker/application/workout/bloc/workout_bloc.dart';
import 'package:fitnesstracker/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/diet/bloc/diet_bloc.dart';
import '../../application/plan/plan_type_bloc/plan_type_bloc.dart';
import '../../domain/http/i_http_client.dart';
import '../../domain/workouts/i_workout_repository.dart';
import '../../infrastructure/diet/diet_repository.dart';
import '../routes/router.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});
  final router = AppRouter().router;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
        BlocProvider(
            create: (context) =>
                getIt<WorkoutBloc>()..add(const WorkoutEvent.getWorkouts())),
        BlocProvider(
            create: (context) => DietBloc(DietRepository(getIt<IHttpClient>()))
              ..add(const DietEvent.getDiets())),
        BlocProvider(
            create: (context) =>
                getIt<PlanBloc>()..add(const PlanEvent.getPlans())),
        BlocProvider(
            create: (context) =>
                getIt<PlanTypeBloc>()..add(const PlanTypeEvent.getPlanTypes())),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
