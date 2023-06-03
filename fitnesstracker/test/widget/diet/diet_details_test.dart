import 'package:fitnesstracker/presentation/user/diet/diet_details.dart';
import 'package:fitnesstracker/presentation/user/diet/widgets/food_step_detail_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fitnesstracker/infrastructure/diet/diet_dto.dart';
import 'package:readmore/readmore.dart';

void main() {
  
  testWidgets('DietDetailsView Test', (WidgetTester tester) async {
    // Create a mock DietDto object for testing
    const diet = DietDto(
      imageUrl: 'example.com/image.jpg',
      mealName: 'Example Meal',
      mealDescription: 'Example Meal Description',
      id: 123,
      mealType: 'lunch',
    );

    // Build the widget under test
    await tester.pumpWidget(
      const MaterialApp(
        home: DietDetailsView(diet: diet),
      ),
    );

    // Verify the presence of the SliverAppBar widgets
    expect(find.byType(SliverAppBar), findsNWidgets(2));

    // Verify the presence of the Nutrition section
    expect(find.text('Nutrition'), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(Container), findsWidgets);

    // Verify the presence of the Descriptions section
    expect(find.text('Descriptions'), findsOneWidget);
    expect(find.byType(ReadMoreText), findsOneWidget);

    // Verify the presence of the Ingredients section
    expect(find.text('Ingredients That You\nWill Need'), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(Column), findsWidgets);

    // Verify the presence of the Step by Step section
    expect(find.text('Step by Step'), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(FoodStepDetailRow), findsWidgets);
  });
}
