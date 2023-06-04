import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';

import '../../../application/diet/bloc/diet_bloc.dart';
import '../../../common/api_urls.dart';
import '../../../domain/diet/diet.dart';
import '../../../infrastructure/diet/diet_form_dto.dart';
import '../../../injection.dart';
import '../../core/widget/image_card_with_basic_footer.dart';
import '../../routes/router.dart';
import '../drawer/admin_drawer.dart';

class DietListScreen extends StatefulWidget {
  const DietListScreen({Key? key}) : super(key: key);

  @override
  State<DietListScreen> createState() => _DietListScreenState();
}

class _DietListScreenState extends State<DietListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DietBloc>().add(const DietEvent.getDiets());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: const SizedBox(height: 0),
        title: const Text('Diets Management'),
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
      ),
      drawer: const AdminDrawer(),
      body: BlocBuilder<DietBloc, DietState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const CircularProgressIndicator(),
            loading: (_) => const CircularProgressIndicator(),
            listloaded: (st) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  final diet = st.diets[index];
                  return Dismissible(
                    key: ValueKey(diet.id),
                    background: Container(
                      color: Colors.red,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      context.read<DietBloc>().add(DietEvent.delete(diet.id));
                    },
                    child: GestureDetector(
                      onTap: () {
                        context.push(AppRouter.dietDetailRoute,
                            extra: Diet(
                                id: diet.id,
                                mealName: diet.mealName,
                                mealDescription: diet.mealDescription,
                                mealType: diet.mealType,
                                imageUrl: diet.imageUrl));
                      },
                      child: Card(
                        elevation: 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              child: Image.network(
                                ApiUrls.getImage + diet.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10, 2, 2, 2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          diet.mealName,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            context.push(
                                                AppRouter.dietUpsertRoute,
                                                extra: DietFormDto(
                                                    id: diet.id,
                                                    imageUrl: null,
                                                    mealDescription:
                                                        diet.mealDescription,
                                                    mealName: diet.mealName,
                                                    mealType: diet.mealType));
                                          },
                                          icon: const Icon(Icons.edit),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      diet.mealDescription,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: st.diets.length,
              ),
            ),
            failure: (_) => const Text("Failed to load diets"),
            notLoading: (_) => Container(),
            loaded: (_) => Container(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push(AppRouter.dietUpsertRoute);
          context.read<DietBloc>().add(const DietEvent.getDiets());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
