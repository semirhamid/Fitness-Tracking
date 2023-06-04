import 'package:flutter/material.dart';

import '../../../../domain/user/plan/value_objects.dart';
import '../../common/colo_extension.dart';
import '../../workout/workout_details.dart';
import 'plan_detail_row.dart';

class WorkoutList extends StatelessWidget {
  final int dayNumber;
  final int planTypeId;
  final DayPlan dayPlan;
  const WorkoutList({super.key, required this.planTypeId, required this.dayPlan, required this.dayNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 12),
            Row(
              children: [
                const SizedBox(width: 20, height: 20),
                Text(
                  '${dayPlan.workouts.length} Workouts',
                  style: TextStyle(
                      color: TColor.black, fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            ListView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: dayPlan.workouts.length,
                itemBuilder: (context, index) {
                  return PlanDetailRow(
                    title: dayPlan.workouts[index].title.value,
                    image: dayPlan.workouts[index].image,
                    extra: '1 min',
                    onPressed: () => Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => WorkoutDetailsView(planTypeId: planTypeId, workout: dayPlan.workouts[index], day: dayNumber))),
                  );
                }),
          ],
        ),
      );
  }
}