import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'drawer/admin_drawer.dart';

class AdminLayout extends StatelessWidget {
  const AdminLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Admin Layout',
          style: TextStyle(color: Colors.black),
        ),
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
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer:
          const AdminDrawer(), // Replace with your custom admin drawer widget
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Welcome, Admin!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'This is the admin layout with a beautiful design.',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 16),
                  SvgPicture.asset(
                    'assets/images/admin.svg', // Replace with your own SVG image path
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
