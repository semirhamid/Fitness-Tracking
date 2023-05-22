import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../constant/intro_screen_data.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int currentPage = 0;

  handleSkip() {
    setState(() {
      currentPage = introScreenData.length - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe.builder(
            itemCount: introScreenData.length,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                color: Colors.red,
                child: SizedBox(
                  height: double.infinity,
                  child: Stack(
                    children: [
                      SizedBox(
                        child: Image.asset(
                          introScreenData[index].image,
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(1),
                              Colors.black.withOpacity(0.6),
                              Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, bottom: 125, right: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              introScreenData[index].title,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              introScreenData[index].subtitle,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              );
            },
            onPageChangeCallback: (activePageIndex) {
              setState(() {
                currentPage = activePageIndex;
              });
            },
            slideIconWidget: (currentPage != introScreenData.length - 1)
                ? const Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: Colors.white,
                  )
                : null,
            waveType: WaveType.liquidReveal,
            enableLoop: false,
            positionSlideIcon: 0.9,
            fullTransitionValue: 1000,
          ),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                introScreenData.length,
                (index) => Container(
                  width: 20,
                  height: 6,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: index == currentPage ? Colors.white : Colors.white54,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentPage == introScreenData.length - 1)
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).go('/login');
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                if (currentPage == introScreenData.length - 1)
                  TextButton(
                    onPressed: () {
                      GoRouter.of(context).go('/signup');
                    },
                    child: const Text(
                      'Signup',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                if (currentPage != introScreenData.length - 1)
                  TextButton(
                    onPressed: handleSkip,
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
