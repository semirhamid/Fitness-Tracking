import 'dart:io';

import 'package:fitnesstracker/domain/core/validate_object.dart' as ob;
import 'package:fitnesstracker/domain/core/value_objects.dart';
import 'package:fitnesstracker/domain/workouts/workout.dart';
import 'package:fitnesstracker/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../application/workout/bloc/workout_bloc.dart';
import '../../../common/api_urls.dart';
import '../../../infrastructure/workouts/workout_dto.dart';
import '../../../infrastructure/workouts/workout_form_dto.dart';
import '../drawer/admin_drawer.dart';

class WorkoutManagement extends StatefulWidget {
  const WorkoutManagement({Key? key}) : super(key: key);

  @override
  State<WorkoutManagement> createState() => _WorkoutManagementState();
}

class _WorkoutManagementState extends State<WorkoutManagement> {
  List<Workout> workouts = []; // Placeholder list to store the added workouts

  @override
  void initState() {
    super.initState();
    context.read<WorkoutBloc>().add(const WorkoutEvent.getWorkouts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: const SizedBox(height: 0),
        title: const Text('Workouts Management'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const AdminDrawer(),
      body: BlocBuilder<WorkoutBloc, WorkoutState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const CircularProgressIndicator(),
            loading: (_) => const CircularProgressIndicator(),
            listloaded: (st) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  final workout = st.workouts[index];
                  return Dismissible(
                    key: ValueKey(workout.id),
                    background: Container(
                      color: Colors.red,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      context
                          .read<WorkoutBloc>()
                          .add(WorkoutEvent.delete(workout.id));
                    },
                    child: GestureDetector(
                      onTap: () {
                        context.push(AppRouter.workoutdetails, extra: workout);
                      },
                      child: Card(
                        elevation: 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                ApiUrls.getImage + workout.image1Url,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 2, 2, 2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          workout.title,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            context.push(
                                              AppRouter.workoutUpsert, extra: WorkoutFormDto(
                                                description: workout.description,
                                                step: workout.step,
                                                title: workout.title,
                                                duration: workout.duration,
                                                id: workout.id,
                                                focus: workout.focus,
                                                image1Url: null,
                                                image2Url: null
                                                
                                              )
                                            );
                                          },
                                          icon: const Icon(Icons.edit),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      workout.description,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: st.workouts.length,
              ),
            ),
            failure: (_) => const Text("Failed to load workouts"),
            notLoading: (_) => Container(),
            loaded: (_) => Container(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push(AppRouter.workoutUpsert);
          context.read<WorkoutBloc>().add(const WorkoutEvent.getWorkouts());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
