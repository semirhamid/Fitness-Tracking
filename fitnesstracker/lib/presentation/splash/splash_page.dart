import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../application/auth/auth_bloc.dart';
import '../routes/router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _isVisible = false;

  _SplashPageState() {
    Timer(const Duration(seconds: 3), () {
      context.go(AppRouter.signInRoute);
    });
    Timer(const Duration(milliseconds: 10), () {
      setState(() {
        _isVisible = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(initial: (_) {
            context.go('/signin');
          }, authenticated: (_) {
            context.go('/signin');
          }, unauthenticated: (_) {
            context.go('/signin');
          });
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).colorScheme.secondary,
              ],
              begin: const FractionalOffset(0, 0),
              end: const FractionalOffset(1.0, 0.0),
              stops: const [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
          child: AnimatedOpacity(
            opacity: _isVisible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 1200),
            child: Center(
              child: Container(
                height: 140.0,
                width: 140.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 2.0,
                          offset: const Offset(5.0, 3.0),
                          spreadRadius: 2.0)
                    ]),
                child: const Center(
                  child: ClipOval(
                    child: Icon(
                      Icons.fitness_center,
                      size: 128,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
