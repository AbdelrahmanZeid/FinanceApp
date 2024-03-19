import 'package:finance_app/colors/colors.dart';
import 'package:finance_app/pages/home.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller = PageController();
  int currentIndex = 0;
  bool isNotPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) {
                    return const Home();
                  },
                ),
                (route) => false,
              );
            },
            child: const Text(
              "Skip",
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          8,
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (value,) {
                  currentIndex = value;
                  setState(() {});
                  if (value + 1 == items.length) {
                    setState(() {
                      isNotPage = true;
                    });
                  } else {
                    setState(() {
                      isNotPage = false;
                    });
                  }
                },
                controller: _controller,
                itemBuilder: (BuildContext context, int index) {
                  return items[index];
                },
                itemCount: items.length,
              ),
            ),
            Row(
              children: [
                Text(
                  "${currentIndex + 1}/3",
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    isNotPage
                        ? Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (_) {
                            return const Home();
                          }), (route) => false)
                        : _controller.nextPage(
                            duration: const Duration(
                              milliseconds: 400,
                            ),
                            curve: Curves.bounceIn,
                          );
                  },
                  child: Text(
                    isNotPage ? "Get Started" : "Next",
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

List<PageItem> items = [
  const PageItem(
    title: "title one",
    subTitle: 'subTitle one',
    image: 'assets/images/finance1.png',
  ),
  const PageItem(
    title: "title two",
    subTitle: 'subTitle two',
    image: 'assets/images/finance2.png',
  ),
  const PageItem(
    title: "title three",
    subTitle: 'subTitle three',
    image: 'assets/images/finance3.png',
  ),
];

class PageItem extends StatelessWidget {
  const PageItem(
      {super.key,
      required this.title,
      required this.image,
      required this.subTitle});
  final String title;
  final String image;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            image,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 36,
            color: kGreenColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          subTitle,
          style: const TextStyle(
            fontSize: 28,
            color: kRedColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
