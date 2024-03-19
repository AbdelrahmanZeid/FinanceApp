import 'package:finance_app/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dark_mode,
            ),
          ),
        ],
        title: const Text(
          "Welcome Abdelrahman",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          8,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: kBlackColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            8,
                          ),
                          bottomLeft: Radius.circular(
                            8,
                          ),
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "data",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "data",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 75,
                    decoration: const BoxDecoration(
                      color: kPurbleColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          8,
                        ),
                        bottomRight: Radius.circular(
                          8,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: kBlackColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            8,
                          ),
                          bottomLeft: Radius.circular(
                            8,
                          ),
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "data",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "data",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 75,
                    decoration: const BoxDecoration(
                      color: kRedColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(
                          8,
                        ),
                        bottomRight: Radius.circular(
                          8,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: kGreenColor,
                          ),
                        ),
                        const Text(
                          "Plus",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kRedColor,
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            color: kRedColor,
                            Icons.remove,
                          ),
                        ),
                        const Text(
                          "Minus",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              children: [
                Text(
                  "Activity",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Text(
                  "SeeAll",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(
                      8,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(
                        8,
                      ),
                      child: const Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                "data",
                              ),
                              Text(
                                "data",
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Text(
                                "data",
                              ),
                              Text(
                                "data",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
