import 'package:fitnesstracker/presentation/user/common/colo_extension.dart';
import 'package:flutter/material.dart';

class PlanDetailRow extends StatelessWidget {
  final String title;
  final String extra;
  final Image image;
  final VoidCallback onPressed;
  const PlanDetailRow({super.key, required this.title, required this.image, required this.onPressed, required this.extra});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          const SizedBox(width: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              color: Colors.grey.shade600,
              width: 60,
              height: 60,
              child: image,
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
                style: TextStyle(color: TColor.black, fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Text(
                extra,
                style: TextStyle(
                  color: TColor.gray,
                  fontSize: 12,
                ),
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
              ))
        ],
      ),
    );
  }
}
