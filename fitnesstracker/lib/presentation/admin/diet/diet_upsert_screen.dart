import 'dart:io';
import 'package:fitnesstracker/application/diet/bloc/diet_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multiselect/multiselect.dart';
import 'package:path/path.dart';

import '../../../application/diet/bloc/diet_bloc.dart';
import '../../../common/api_urls.dart';
import '../../../infrastructure/diet/diet_form_dto.dart';

import '../../../injection.dart';
import '../workout/widget/add_photo.dart';
import '../workout/widget/header_widget.dart';
import '../workout/widget/theme_helper.dart';

class DietUpsertScreen extends StatefulWidget {
  final DietFormDto? diet;

  DietUpsertScreen(this.diet, {Key? key}) : super(key: key);

  @override
  _DietUpsertScreenState createState() => _DietUpsertScreenState();
}

class _DietUpsertScreenState extends State<DietUpsertScreen> {
  final double _headerHeight = 150;
  ImagePicker picker = ImagePicker();
  XFile? image1;
  bool isImage1 = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String selectedCategories = widget.diet?.mealType ?? '';
    final dietNameController =
        TextEditingController(text: widget.diet?.mealName);
    final dietDescriptionController =
        TextEditingController(text: widget.diet?.mealDescription);

    return Scaffold(
      body: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => getIt<DietBloc>(),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: _headerHeight,
                    child: HeaderWidget(_headerHeight, false, Icons.restaurant),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center the image selector
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          margin: const EdgeInsets.all(25),
                          alignment: Alignment.center,
                          child: GestureDetector(
                            child: (image1 != null)
                                ? AddImageWidget(File(image1?.path ?? ""))
                                : const AddImageWidget(null),
                            onTap: () async {
                              image1 = await picker.pickImage(
                                  source: ImageSource.gallery) as XFile;
                              setState(() {
                                isImage1 = !isImage1;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextField(
                      controller: dietNameController,
                      decoration: ThemeHelper()
                          .textInputDecoration('Name', 'Enter diet name'),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: dietDescriptionController,
                      decoration: ThemeHelper().textInputDecoration(
                          'Description', 'Enter diet description'),
                      maxLines: 3, // Limit the description to 3 lines
                    ),
                    const SizedBox(height: 20),
                    DropDownMultiSelect(
                      options: ['Lunch', 'Breakfast', 'Dinner', 'Supper'],
                      whenEmpty: 'Meal Type',
                      decoration: ThemeHelper().textInputDecoration(),
                      selectedValues: [],
                      onChanged: (selected) {
                        selectedCategories = selected.join(' ');
                      },
                    ),
                    const SizedBox(height: 30),
                    Container(
                      decoration: ThemeHelper().bottonBoxDecoration(context),
                      child: ElevatedButton(
                        style: ThemeHelper().buttonStyle(),
                        onPressed: () {
                          if (widget.diet == null && image1 != null) {
                            var diet = DietFormDto(
                              id: 0,
                              mealType: selectedCategories,
                              mealName: dietNameController.text,
                              mealDescription: dietDescriptionController.text,
                              imageUrl: File(image1?.path ?? ""),
                            );
                            context
                                .read<DietBloc>()
                                .add(DietEvent.create(diet));
                          } else if (widget.diet != null && image1 != null) {
                            var diet = DietFormDto(
                              id: widget.diet?.id ?? 0,
                              mealType: selectedCategories,
                              mealName: dietNameController.text,
                              mealDescription: dietDescriptionController.text,
                              imageUrl: File(image1?.path ?? ""),
                            );
                            context
                                .read<DietBloc>()
                                .add(DietEvent.update(diet));
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                          child: Text(
                            widget.diet == null ? 'ADD' : 'UPDATE',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => context.pop(),
                      child:
                          const Text('Cancel', style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
