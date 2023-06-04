import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';

class PlanDayRow extends StatelessWidget {
  final int day;
  final String extra;
  final String title;
  final VoidCallback onPressed;
  const PlanDayRow({super.key, required this.title, required this.onPressed, required this.extra, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(
                  day > 9 ? day.toString() : '0$day',
                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: TColor.black, fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                extra,
                style: TextStyle(color: TColor.black, fontSize: 14, fontWeight: FontWeight.w100),
              ),
            ],
          )),
          IconButton(
            onPressed: onPressed,
            icon: Image.asset(
              "assets/img/next_go.png",
              width: 20,
              height: 20,
              fit: BoxFit.contain,
            )
          )
        ],
      ),
    );
  }
}
