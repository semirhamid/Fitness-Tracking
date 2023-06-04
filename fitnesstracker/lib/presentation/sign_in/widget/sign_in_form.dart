import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import '../../core/animation/fade_animation.dart';
import '../../routes/router.dart';

class SignInForm extends StatelessWidget {
  SignInForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        // Handle state changes and show notifications or perform actions
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.always,
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    FadeAnimation(
                      1.8,
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                onChanged: (value) => {
                                  context
                                      .read<SignInFormBloc>()
                                      .add(SignInFormEvent.emailChanged(value))
                                },
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                ),
                                validator: (_) => context
                                    .read<SignInFormBloc>()
                                    .state
                                    .emailAddress
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        invalidEmail: (_) => 'Invalid Email',
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                obscureText: true,
                                onChanged: (value) => context
                                    .read<SignInFormBloc>()
                                    .add(
                                        SignInFormEvent.passwordChanged(value)),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                ),
                                validator: (_) => context
                                    .read<SignInFormBloc>()
                                    .state
                                    .password
                                    .value
                                    .fold(
                                      (f) => f.maybeMap(
                                        shortPassword: (_) => 'Short Password',
                                        orElse: () => null,
                                      ),
                                      (_) => null,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    FadeAnimation(
                      2,
                      TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            context.read<SignInFormBloc>().add(
                                SignInFormEvent.signinPressed(
                                    state.emailAddress, state.password));
                                    context.go(AppRouter.adminhome);
                          } else {
                            print("abebe");
                          }
                        },
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0.0),
                        ),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, .6),
                              ],
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FadeAnimation(
                      2,
                      TextButton(
                        onPressed: () {
                          context.go(AppRouter.registerRoute);
                        },
                        child: const Text(
                          "Don't have an account? Sign up",
                          style: TextStyle(
                            color: Color.fromRGBO(143, 148, 251, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 70),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
