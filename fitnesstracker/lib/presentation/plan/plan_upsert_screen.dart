import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multiselect/multiselect.dart';
import 'package:path/path.dart';

import '../../../common/api_urls.dart';
import '../../../infrastructure/plan/plan_form_dto.dart';

import '../../../injection.dart';
import '../../application/plan/plan_bloc/plan_bloc.dart';
import '../../infrastructure/plan/plan_form_dto.dart';
import '../admin/workout/widget/add_photo.dart';
import '../admin/workout/widget/header_widget.dart';
import '../admin/workout/widget/theme_helper.dart';

class PlanUpsertScreen extends StatefulWidget {
  final PlanFormDto? plan;

  PlanUpsertScreen(this.plan, {Key? key}) : super(key: key);

  @override
  _PlanUpsertScreenState createState() => _PlanUpsertScreenState();
}

class _PlanUpsertScreenState extends State<PlanUpsertScreen> {
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
    String selectedCategories = widget.plan?.level ?? '';
    final planNameController = TextEditingController(text: widget.plan?.title);
    final planDescriptionController =
        TextEditingController(text: widget.plan?.description);

    return Scaffold(
      body: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => getIt<PlanBloc>(),
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
                      controller: planNameController,
                      decoration: ThemeHelper()
                          .textInputDecoration('Name', 'Enter plan name'),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: planDescriptionController,
                      decoration: ThemeHelper().textInputDecoration(
                          'Description', 'Enter plan description'),
                      maxLines: 3, // Limit the description to 3 lines
                    ),
                    const SizedBox(height: 20),
                    DropDownMultiSelect(
                      options: const [
                        'Beginner',
                        'Intermediate',
                        'Advanced',
                        'Expert'
                      ],
                      whenEmpty: 'Exersice Level',
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
                          if (widget.plan == null && image1 != null) {
                            var plan = PlanFormDto(
                              level: selectedCategories,
                              title: planNameController.text,
                              description: planDescriptionController.text,
                              imageUrl: File(image1?.path ?? ""),
                            );
                            context
                                .read<PlanBloc>()
                                .add(PlanEvent.create(plan));
                          } else if (widget.plan != null && image1 != null) {
                            var plan = PlanFormDto(
                              id: widget.plan?.id ?? 0,
                              level: selectedCategories,
                              title: planNameController.text,
                              description: planDescriptionController.text,
                              imageUrl: File(image1?.path ?? ""),
                            );
                            context
                                .read<PlanBloc>()
                                .add(PlanEvent.update(plan));
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                          child: Text(
                            widget.plan == null ? 'ADD' : 'UPDATE',
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
