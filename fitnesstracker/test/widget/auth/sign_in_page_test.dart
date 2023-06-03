// import 'package:fitnesstracker/presentation/sign_in/sign_in_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main() {
//   group('SignInPage', () {
//     // testWidgets('renders RegistrationForm', (WidgetTester tester) async {
//     //   await tester.pumpWidget(const MaterialApp(home: RegistrationPage()));

//     //   expect(find.byType(RegistrationForm), findsOneWidget);
//     // });

//     testWidgets('displays Signin text', (WidgetTester tester) async {
//       await tester.pumpWidget(const MaterialApp(home: SignInPage()));

//       expect(find.text('Signin'), findsOneWidget);
//     });
//   });
// }
import 'package:fitnesstracker/presentation/sign_in/widget/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fitnesstracker/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:fitnesstracker/injection.dart';
import 'package:fitnesstracker/presentation/sign_in/sign_in_page.dart';
import 'package:injectable/injectable.dart';

void main() {
  group('SignInPage', () {
    setUpAll(() {
      configureDependencies(Environment.dev);
    });
    testWidgets('renders SignInForm', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<SignInFormBloc>(
            create: (context) => getIt<SignInFormBloc>(),
            child: const SignInPage(),
          ),
        ),
      );

      expect(find.byType(SignInForm), findsOneWidget);
    });
  });
}
