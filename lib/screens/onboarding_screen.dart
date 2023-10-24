import 'package:flutter/material.dart';
import 'package:food_app/data/data.dart';

import '../widget/start_button_widget.dart';

int _currentPage = 0;

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.85,
                decoration: BoxDecoration(
                  color: Colors.black,
                  gradient: LinearGradient(
                    colors: vegetables[index].gradientColors,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/${vegetables[index].image}.png',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      vegetables[index].title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            blurRadius: 3,
                            offset: Offset(2, 2),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        vegetables[index].headline,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    // get start button
                    _currentPage == 3 ? const StartButton() : Container(),

                    _currentPage == 3
                        ? const SizedBox(
                            height: 20,
                          )
                        : Container(),

                    // page indicator
                    buildPageIndicator(),
                  ],
                ),
              ),
            );
          },
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
        ),
      ),
    );
  }
}

Widget buildPageIndicator() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: List<Widget>.generate(
      4,
      (index) {
        return Container(
          width: 10,
          height: 10,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index ? Colors.white : Colors.grey.shade600,
          ),
        );
      },
    ),
  );
}
