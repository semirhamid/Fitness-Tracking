import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routes/router.dart';

class AdminDrawer extends StatelessWidget {
  const AdminDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Admin Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text('Dashboard'),
              onTap: () {
                // Navigate to the Dashboard page
                context.go(AppRouter.adminhome);
              },
            ),
            ListTile(
              leading: const Icon(Icons.sports_gymnastics),
              title: const Text('Workouts'),
              onTap: () {
                // Navigate to the Settings page
                context.go(AppRouter.workoutmanagement);
              },
            ),
            ListTile(
              leading: const Icon(Icons.food_bank),
              title: const Text('Diets'),
              onTap: () {
                // Navigate to the Settings page
                context.go(AppRouter.dietListScreenRoute);
              },
            ),
            ListTile(
              leading: const Icon(Icons.map_outlined),
              title: const Text('Plan'),
              onTap: () {
                // Navigate to the Settings page
                context.go(AppRouter.planListRoute);
              },
            ),
            // Add more ListTile items for other admin screens
          ],
        ),
      ),
    );
  }
}
