// ignore_for_file: must_be_immutable
import 'dart:io';
import 'package:fitnesstracker/application/workout/bloc/workout_bloc.dart';
import 'package:fitnesstracker/presentation/admin/workout/widget/add_photo.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multiselect/multiselect.dart';
import 'package:path/path.dart';

import '../../../application/workout/bloc/workout_bloc.dart';
import '../../../application/workout/bloc/workout_bloc.dart';
import '../../../common/api_urls.dart';
import '../../../domain/workouts/workout.dart';
import '../../../infrastructure/workouts/workout_dto.dart';
import '../../../infrastructure/workouts/workout_form_dto.dart';
import '../../../injection.dart';

import 'package:http/http.dart' as http;

import '../admin/workout/widget/header_widget.dart';
import '../admin/workout/widget/theme_helper.dart';

class UpsertWorkout extends StatefulWidget {
  final WorkoutFormDto? workout;

  UpsertWorkout(this.workout, {Key? key}) : super(key: key);

  @override
  _UpsertWorkoutState createState() => _UpsertWorkoutState();
}

class _UpsertWorkoutState extends State<UpsertWorkout> {
  final double _headerHeight = 150;
  ImagePicker picker = ImagePicker();
  XFile? image1;
  XFile? image2;
  bool isImage1 = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String selectedCategories = widget.workout?.focus ?? '';
    final workoutNameController =
        TextEditingController(text: widget.workout?.title);
    final workoutProcedureController =
        TextEditingController(text: widget.workout?.description);
    final workoutDurationController =
        TextEditingController(text: widget.workout?.duration.toString());
    final workoutStepController =
        TextEditingController(text: widget.workout?.step.toString());
    print(widget.workout);
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => getIt<WorkoutBloc>(),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: _headerHeight,
                    child: HeaderWidget(_headerHeight, false, Icons.restaurant),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(25, 50, 25, 0),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          child: GestureDetector(
                            child: (image1 != null)
                                ? AddImageWidget(
                                    File(image1?.path ?? ""),
                                  )
                                : const AddImageWidget(null),
                            onTap: () async => {
                              image1 = await picker.pickImage(
                                  source: ImageSource.gallery) as XFile,
                              setState(() {
                                isImage1 = !isImage1;
                              })
                            },
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(25, 50, 25, 0),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          alignment: Alignment.center,
                          child: GestureDetector(
                            child: (image2 != null)
                                ? AddImageWidget(File(image2?.path ?? ""))
                                : const AddImageWidget(null),
                            onTap: () async => {
                              image2 = await picker.pickImage(
                                  source: ImageSource.gallery) as XFile,
                              setState(() {
                                isImage1 = !isImage1;
                              })
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextField(
                      controller: workoutNameController,
                      decoration: ThemeHelper()
                          .textInputDecoration('Name', 'Enter workout name'),
                    ),
                    const SizedBox(height: 20),
                    DropDownMultiSelect(
                      options: [
                        'Chest',
                        'Back',
                        'Legs',
                        'Shoulders',
                        'Arms',
                      ],
                      whenEmpty: 'Categories',
                      decoration: ThemeHelper().textInputDecoration(),
                      selectedValues: [],
                      onChanged: (selected) {
                        selectedCategories = selected.join(' ');
                        print(selectedCategories);
                      },
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: workoutProcedureController,
                      decoration: ThemeHelper().textInputDecoration(
                        'Procedures',
                        'Enter the procedures',
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: workoutDurationController,
                      keyboardType: TextInputType.number,
                      decoration: ThemeHelper().textInputDecoration(
                        'Duration',
                        'Duration in seconds',
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: workoutStepController,
                      keyboardType: TextInputType.number,
                      decoration: ThemeHelper()
                          .textInputDecoration('Steps', 'Steps number'),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      decoration: ThemeHelper().bottonBoxDecoration(context),
                      child: ElevatedButton(
                        style: ThemeHelper().buttonStyle(),
                        onPressed: () {
                          if (widget.workout == null &&
                              image1 != null &&
                              image2 != null) {
                            var workout = WorkoutFormDto(
                              title: workoutNameController.text,
                              focus: selectedCategories,
                              description: workoutProcedureController.text,
                              duration:
                                  int.parse(workoutDurationController.text),
                              step: int.parse(workoutStepController.text),
                              image1Url: File(image1?.path ?? ""),
                              image2Url: File(image2?.path ?? ""),
                            );
                            print(workout);
                            context.read<WorkoutBloc>().add(
                                  WorkoutEvent.create(workout),
                                );
                          } else if (widget.workout != null) {
                            var workout = WorkoutFormDto(
                              title: workoutNameController.text,
                              focus: selectedCategories,
                              description: workoutProcedureController.text,
                              duration:
                                  int.parse(workoutDurationController.text),
                              step: int.parse(workoutStepController.text),
                              image1Url: File(image1?.path ?? ""),
                              image2Url: File(image2?.path ?? ""),
                              id: widget.workout?.id ?? 0,
                            );
                            context.read<WorkoutBloc>().add(
                                  WorkoutEvent.update(workout),
                                );
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                          child: Text(
                            widget.workout == null ? 'ADD' : 'UPDATE',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => context.pop(),
                      child:
                          const Text('Cancel', style: TextStyle(fontSize: 20)),
                    ),
                    context.read<WorkoutBloc>().state.map(initial: (e) {
                      return Container();
                    }, loading: (e) {
                      return const CircularProgressIndicator();
                    }, notLoading: (e) {
                      return Container();
                    }, listloaded: (e) {
                      return Container();
                    }, loaded: (e) {
                      return Container();
                    }, failure: (e) {
                      return Container();
                    })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
