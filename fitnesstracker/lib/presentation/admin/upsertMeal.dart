import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multiselect/multiselect.dart';

import 'workout/widget/add_photo.dart';
import 'workout/widget/header_widget.dart';
import 'workout/widget/theme_helper.dart';

class MealFormUpsert extends StatelessWidget {
  final MealForm? meal;

  MealFormUpsert(this.meal, {super.key});

  final double _headerHeight = 150;

  @override
  Widget build(BuildContext context) {
    final TextEditingController mealNameController =
        TextEditingController(text: meal?.name);
    final TextEditingController descController =
        TextEditingController(text: meal?.description);
    String selectedCategories = meal?.categories ?? '';

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                    height: _headerHeight,
                    child:
                        HeaderWidget(_headerHeight, false, Icons.restaurant)),
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 50, 25, 0),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: const AddImageWidget(null),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: mealNameController,
                    decoration: ThemeHelper()
                        .textInputDecoration('Name', 'Enter meal name'),
                  ),
                  const SizedBox(height: 20),
                  DropDownMultiSelect(
                      options: const ['Breakfast', 'Lunch', 'Dinner', 'Snack'],
                      whenEmpty: 'Categories',
                      decoration: ThemeHelper().textInputDecoration(),
                      selectedValues: meal?.categories.split('') ?? [],
                      onChanged: (selected) {
                        selectedCategories = selected.join(' ');
                        print('Selected Categories: $selectedCategories');
                      }),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 122,
                    child: TextField(
                      controller: descController,
                      decoration: ThemeHelper().textInputDecoration(
                          'Description', 'Enter description'),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    decoration: ThemeHelper().bottonBoxDecoration(context),
                    child: ElevatedButton(
                      style: ThemeHelper().buttonStyle(),
                      onPressed: () {
                        print('Name: ${mealNameController.text}');
                        print('Categories: $selectedCategories');
                        print('Energy per serve: $descController');
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Text(
                          meal == null ? 'ADD' : 'UPDATE',
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancel', style: TextStyle(fontSize: 20)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MealForm {
  final String image;
  final String name;
  final String categories;
  final String description;
  MealForm(this.image, this.name, this.categories, this.description);
}
