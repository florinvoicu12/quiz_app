import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        WebsafeSvg.asset("assets/quiz_app_bg.svg"),
        const SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProgressBar(),
                // const Text(
                //   "Question 1/4",
                //   style: TextStyle(color: Colors.white),
                // ),
                // Container(
                //   height: double.infinity,
                //   decoration: const BoxDecoration(
                //       borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(12),
                //           topRight: Radius.circular(12))),
                // )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
          border:
              Border.all(color: const Color(0xFF3F4768), width: 3),
          borderRadius: BorderRadius.circular(50)),
      child: Stack(children: [
        LayoutBuilder(
            builder: ((context, constraints) => Container(
                  width: constraints.maxWidth / 2,
                  decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.circular(50)),
                ))),
        Positioned.fill(
            child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("18 sec"),
              WebsafeSvg.asset("assets/quiz_app_clock.svg")
            ],
          ),
        ))
      ]),
    );
  }
}
