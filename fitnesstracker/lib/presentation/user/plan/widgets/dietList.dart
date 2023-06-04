import 'package:fitnesstracker/domain/user/plan/value_objects.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';
import '../../diet/diet_details.dart';
import 'plan_detail_row.dart';

class DietList extends StatelessWidget {
  final DayPlan dayPlan;
  const DietList(this.dayPlan, {super.key});

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
                '${dayPlan.diets.length} Diets',
                style: TextStyle(
                    color: TColor.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
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
              itemCount: dayPlan.diets.length,
              itemBuilder: (context, index) {
                return PlanDetailRow(
                  title: dayPlan.diets[index].mealName,
                  image: Image.network(dayPlan.diets[index].image,
                      fit: BoxFit.fill),
                  extra: '2500 calories',
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DietDetailsView(diet: dayPlan.diets[index]))),
                );
              }),
        ],
      ),
    );
  }
}
