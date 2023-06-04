import 'dart:convert';

import 'package:fitnesstracker/common/api_urls.dart';
import 'package:fitnesstracker/infrastructure/workouts/workout_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:accordion/accordion.dart';

import '../../application/plan/plan_type_bloc/plan_type_bloc.dart';
import '../../infrastructure/diet/diet_dto.dart';
import '../../infrastructure/plan/plan_dto.dart';

class PlanTypeScreen extends StatefulWidget {
  final PlanDto planDto;

  const PlanTypeScreen(this.planDto, {Key? key}) : super(key: key);

  @override
  State<PlanTypeScreen> createState() => _PlanTypeScreenState();
}

class _PlanTypeScreenState extends State<PlanTypeScreen> {
  @override
  void initState() {
    super.initState();
    context
        .read<PlanTypeBloc>()
        .add(PlanTypeEvent.getPlanType(widget.planDto.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plan Type'),
      ),
      body: BlocBuilder<PlanTypeBloc, PlanTypeState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loading: (_) => Container(),
              notLoading: (_) => Container(),
              listloaded: (_) => Container(),
              loaded: (typePlan) {
                return ListView.builder(
                  itemCount: typePlan.plan.dayPlanType.length,
                  itemBuilder: (context, index) {
                    final dayPlanEntry =
                        typePlan.plan.dayPlanType.entries.elementAt(index);
                    final day = dayPlanEntry.key;
                    final diets = dayPlanEntry.value.diets;
                    final workouts = dayPlanEntry.value.workouts;

                    return Accordion(
                      children: [
                        AccordionSection(
                          header: ListTile(
                            title: Text('Day $day'),
                          ),
                          content: Column(
                            children: [
                              Text('Diets:'),
                              Column(
                                children: diets.map<Widget>((diet) {
                                  return ListTile(
                                    title: Text(diet.mealName),
                                    subtitle: Text(diet.mealDescription),
                                    leading: Image.network(
                                        ApiUrls.getImage + diet.imageUrl),
                                  );
                                }).toList(),
                              ),
                              SizedBox(height: 16),
                              Text('Workouts:'),
                              Column(
                                children: workouts.map<Widget>((workout) {
                                  return ListTile(
                                    title: Text(workout.title),
                                    subtitle: Text(workout.description),
                                    leading: Image.network(
                                        ApiUrls.getImage + workout.image1Url),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              failure: (_) => Container());
        },
      ),
    );
  }
}
