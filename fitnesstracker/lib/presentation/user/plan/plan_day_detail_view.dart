import 'package:fitnesstracker/presentation/user/plan/widgets/dietList.dart';
import 'package:fitnesstracker/presentation/user/plan/widgets/workoutList.dart';
import 'package:flutter/material.dart';

import '../../../domain/user/plan/value_objects.dart';
import '../common/colo_extension.dart';

class PlanDayWorkoutListView extends StatefulWidget {
  final int planTypeId;
  final int dayNumber;
  final DayPlan dayPlan;
  const PlanDayWorkoutListView ({super.key, required this.dayPlan, required this.dayNumber, required this.planTypeId});

  @override
  State<PlanDayWorkoutListView> createState() => _PlanDayWorkoutListViewState();
}

class _PlanDayWorkoutListViewState extends State<PlanDayWorkoutListView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                bottom: const TabBar(
                  labelColor: Colors.black,
                  tabs: [
                    Tab(text: 'Workouts'),
                    Tab(text: 'Diets'),
                  ],
                ),
                backgroundColor: Colors.white,
                centerTitle: true,
                elevation: 0,
                title: Text('Day ${widget.dayNumber}', style: const TextStyle(color: Colors.black)),
                leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: TColor.lightGray,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "assets/img/black_btn.png",
                      width: 15,
                      height: 15,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                actions: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: TColor.lightGray,
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/img/more_btn.png",
                        width: 15,
                        height: 15,
                        fit: BoxFit.contain,
                      ),
                    ),
                  )
                ],
              ),
            ];
          },
        body: TabBarView(
          children: [
            WorkoutList(dayNumber: widget.dayNumber, planTypeId: widget.planTypeId, dayPlan: widget.dayPlan),
            DietList(widget.dayPlan)
          ]
        ),
      ),
    );
  }
}