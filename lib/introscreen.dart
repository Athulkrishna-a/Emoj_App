import 'package:emoj_app/homescreen.dart';
import 'package:emoj_app/introview/introview_1.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _controller = PageController();
  bool OnLastPage = false;
  _storeOnBoardInfo() async {
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("HomeView", isViewed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                OnLastPage = (index == 2);
              });
            },
            children: const [
              IntroOne(
                image: 'assets/says_hello.json',
                text: 'Hello \n Welcome To My App',
              ),
              IntroOne(
                image: 'assets/semi_flat.json',
                text:
                    "Emojis are essential to communicate \n emotion, something that words \n cannot portray",
              ),
              IntroOne(
                image: 'assets/emoji_day.json',
                text:
                    ' Emojis are meant to be fun, \n light-hearted, and convey a broad range of \n emotions efficiently and in a way that \n words sometimes cannot.',
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SmoothPageIndicator(controller: _controller, count: 3),
                OnLastPage
                    ? GestureDetector(
                        onTap: () async {
                          await _storeOnBoardInfo();
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                              return const HomeView();
                            }),
                          );
                        },
                        child: const Text(
                          "Done",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(microseconds: 2000),
                              curve: Curves.easeIn);
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
