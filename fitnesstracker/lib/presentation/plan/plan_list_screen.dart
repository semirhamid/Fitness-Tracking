import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';

import '../../../common/api_urls.dart';
import '../../../domain/plan/plan.dart';
import '../../../infrastructure/plan/plan_form_dto.dart';
import '../../../injection.dart';
import '../../application/plan/plan_bloc/plan_bloc.dart';
import '../../infrastructure/plan/plan_dto.dart';
import '../admin/drawer/admin_drawer.dart';
import '../routes/router.dart';

class PlanListScreen extends StatefulWidget {
  const PlanListScreen({Key? key}) : super(key: key);

  @override
  State<PlanListScreen> createState() => _PlanListScreenState();
}

class _PlanListScreenState extends State<PlanListScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PlanBloc>().add(const PlanEvent.getPlans());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: const SizedBox(height: 0),
        title: const Text('Plans Management'),
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
      body: BlocBuilder<PlanBloc, PlanState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const CircularProgressIndicator(),
            loading: (_) => const CircularProgressIndicator(),
            listloaded: (st) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  final plan = st.plans[index];
                  return Dismissible(
                    key: ValueKey(plan.id),
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
                      context.read<PlanBloc>().add(PlanEvent.delete(plan.id));
                    },
                    child: GestureDetector(
                      onTap: () {
                        context.push(AppRouter.planDetailRoute,
                            extra: PlanDto(
                                id: plan.id,
                                title: plan.title,
                                description: plan.description,
                                level: plan.level,
                                imageUrl: plan.imageUrl));
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
                                ApiUrls.getImage + plan.imageUrl,
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
                                          plan.title,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            context.push(
                                                AppRouter.planUpsertRoute,
                                                extra: PlanFormDto(
                                                    id: plan.id,
                                                    imageUrl: null,
                                                    description:
                                                        plan.description,
                                                    title: plan.title,
                                                    level: plan.level));
                                          },
                                          icon: const Icon(Icons.edit),
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              context.push(
                                                  AppRouter.planTypeScreen,
                                                  extra: PlanDto(
                                                      id: plan.id,
                                                      title: plan.title,
                                                      description:
                                                          plan.description,
                                                      level: plan.level,
                                                      imageUrl: plan.imageUrl));
                                            },
                                            child: const Text("Manage"))
                                      ],
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      plan.description,
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
                itemCount: st.plans.length,
              ),
            ),
            failure: (_) => const Text("Failed to load plans"),
            notLoading: (_) => Container(),
            loaded: (_) => Container(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push(AppRouter.planUpsertRoute);
          context.read<PlanBloc>().add(const PlanEvent.getPlans());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
