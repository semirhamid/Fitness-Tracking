import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:fitnesstracker/application/userBloc/user_data_bloc/user_data_bloc.dart';
import 'package:fitnesstracker/domain/user/plan/entity.dart';
import 'package:fitnesstracker/presentation/user/common/colo_extension.dart';
import 'package:fitnesstracker/presentation/user/plan/plan_day_detail_view.dart';
import 'package:fitnesstracker/presentation/user/plan/plan_progress.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../common/widgets/icon_title_next_row.dart';
import 'widgets/plan_day_row.dart';

class PlanDayListView extends StatefulWidget {
  final Plan plan;
  const PlanDayListView({super.key, required this.plan});

  @override
  State<PlanDayListView> createState() => _PlanDayListViewState();
}

class _PlanDayListViewState extends State<PlanDayListView> {
  List latestArr = [
    {
      "image": "assets/img/Workout1.png",
      "title": "Fullbody Workout",
      "time": "Today, 03:00pm"
    },
    {
      "image": "assets/img/Workout2.png",
      "title": "Upperbody Workout",
      "time": "June 05, 02:00pm"
    },
  ];

  List youArr = [
    {"image": "assets/img/barbell.png", "title": "Barbell"},
    {"image": "assets/img/skipping_rope.png", "title": "Skipping Rope"},
    {"image": "assets/img/bottle.png", "title": "Bottle 1 Liters"},
  ];

  List exercisesArr = [
    {
      "name": "Set 1",
      "set": [
        {"image": "assets/img/img_1.png", "title": "Warm Up", "value": "05:00"},
        {
          "image": "assets/img/img_2.png",
          "title": "Jumping Jack",
          "value": "12x"
        },
        {"image": "assets/img/img_1.png", "title": "Skipping", "value": "15x"},
        {"image": "assets/img/img_2.png", "title": "Squats", "value": "20x"},
        {
          "image": "assets/img/img_1.png",
          "title": "Arm Raises",
          "value": "00:53"
        },
        {
          "image": "assets/img/img_2.png",
          "title": "Rest and Drink",
          "value": "02:00"
        },
      ],
    },
    {
      "name": "Set 2",
      "set": [
        {"image": "assets/img/img_1.png", "title": "Warm Up", "value": "05:00"},
        {
          "image": "assets/img/img_2.png",
          "title": "Jumping Jack",
          "value": "12x"
        },
        {"image": "assets/img/img_1.png", "title": "Skipping", "value": "15x"},
        {"image": "assets/img/img_2.png", "title": "Squats", "value": "20x"},
        {
          "image": "assets/img/img_1.png",
          "title": "Arm Raises",
          "value": "00:53"
        },
        {
          "image": "assets/img/img_2.png",
          "title": "Rest and Drink",
          "value": "02:00"
        },
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: TColor.primaryG)),
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
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
              title: Text(
                widget.plan.title.value,
                style: TextStyle(
                    color: TColor.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
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
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              leadingWidth: 0,
              leading: Container(),
              expandedHeight: media.width * 0.5,
              flexibleSpace: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: media.width * 0.75,
                  height: media.width * 0.8,
                  child: widget.plan.image,
                ),
              ),
            ),
          ];
        },
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              color: TColor.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 50,
                        height: 4,
                        decoration: BoxDecoration(
                            color: TColor.gray.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.plan.title.value,
                                  style: TextStyle(
                                      color: TColor.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "${widget.plan.dayPlans.length} Days | 3200 kCalories Burn",
                                  style: TextStyle(
                                      color: TColor.gray, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      IconTitleNextRow(
                          icon: "assets/img/time.png",
                          title: "Your Progress",
                          time: "",
                          color: TColor.primaryColor2.withOpacity(0.3),
                          onPressed: () {
                            context
                                .read<UserDataBloc>()
                                .add(GetUserData(widget.plan.id!.value));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PlanProgressView()));
                          }),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      IconTitleNextRow(
                          icon: "assets/img/difficulity.png",
                          title: "Difficulity",
                          time: "Beginner",
                          color: TColor.secondaryColor2.withOpacity(0.3),
                          onPressed: () {}),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "You'll Need",
                            style: TextStyle(
                                color: TColor.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "${youArr.length} Items",
                              style:
                                  TextStyle(color: TColor.gray, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.5,
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: youArr.length,
                            itemBuilder: (context, index) {
                              var yObj = youArr[index] as Map? ?? {};
                              return Container(
                                  margin: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: media.width * 0.35,
                                        width: media.width * 0.35,
                                        decoration: BoxDecoration(
                                            color: TColor.lightGray,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          yObj["image"].toString(),
                                          width: media.width * 0.2,
                                          height: media.width * 0.2,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          yObj["title"].toString(),
                                          style: TextStyle(
                                              color: TColor.black,
                                              fontSize: 12),
                                        ),
                                      )
                                    ],
                                  ));
                            }),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Days",
                            style: TextStyle(
                                color: TColor.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "${widget.plan.dayPlans.length} days",
                              style:
                                  TextStyle(color: TColor.gray, fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: widget.plan.dayPlans.length,
                          itemBuilder: (context, index) {
                            return PlanDayRow(
                              day: index + 1,
                              title: 'Day ${index + 1}',
                              extra:
                                  '${widget.plan.dayPlans[index].workouts.length} workouts',
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PlanDayWorkoutListView(
                                              dayNumber: index + 1,
                                              dayPlan:
                                                  widget.plan.dayPlans[index],
                                              planTypeId:
                                                  widget.plan.id!.value))),
                            );
                          }),
                      SizedBox(
                        height: media.width * 0.1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

LineTouchData get lineTouchData1 => LineTouchData(
      handleBuiltInTouches: true,
      touchTooltipData: LineTouchTooltipData(
        tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
      ),
    );

List<LineChartBarData> get lineBarsData1 => [
      lineChartBarData1_1,
      // lineChartBarData1_2,
    ];
LineChartBarData get lineChartBarData1_1 => LineChartBarData(
      isCurved: true,
      color: TColor.white,
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(show: false),
      spots: const [
        FlSpot(1, 35),
        FlSpot(2, 70),
        FlSpot(3, 40),
        FlSpot(4, 80),
        FlSpot(5, 25),
        FlSpot(6, 70),
        FlSpot(7, 35),
      ],
    );

LineChartBarData get lineChartBarData1_2 => LineChartBarData(
      isCurved: true,
      color: TColor.white.withOpacity(0.5),
      barWidth: 2,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(
        show: false,
      ),
      spots: const [
        FlSpot(1, 80),
        FlSpot(2, 50),
        FlSpot(3, 90),
        FlSpot(4, 40),
        FlSpot(5, 80),
        FlSpot(6, 35),
        FlSpot(7, 60),
      ],
    );
SideTitles get rightTitles => SideTitles(
      getTitlesWidget: rightTitleWidgets,
      showTitles: true,
      interval: 20,
      reservedSize: 40,
    );
Widget rightTitleWidgets(double value, TitleMeta meta) {
  String text;
  switch (value.toInt()) {
    case 0:
      text = '0%';
      break;
    case 20:
      text = '20%';
      break;
    case 40:
      text = '40%';
      break;
    case 60:
      text = '60%';
      break;
    case 80:
      text = '80%';
      break;
    case 100:
      text = '100%';
      break;
    default:
      return Container();
  }
  return Text(text,
      style: TextStyle(
        color: TColor.white,
        fontSize: 12,
      ),
      textAlign: TextAlign.center);
}

SideTitles get bottomTitles => SideTitles(
      showTitles: true,
      reservedSize: 32,
      interval: 1,
      getTitlesWidget: bottomTitleWidgets,
    );

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  var style = TextStyle(
    color: TColor.white,
    fontSize: 12,
  );
  Widget text;
  switch (value.toInt()) {
    case 1:
      text = Text('Sun', style: style);
      break;
    case 2:
      text = Text('Mon', style: style);
      break;
    case 3:
      text = Text('Tue', style: style);
      break;
    case 4:
      text = Text('Wed', style: style);
      break;
    case 5:
      text = Text('Thu', style: style);
      break;
    case 6:
      text = Text('Fri', style: style);
      break;
    case 7:
      text = Text('Sat', style: style);
      break;
    default:
      text = const Text('');
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 10,
    child: text,
  );
}
