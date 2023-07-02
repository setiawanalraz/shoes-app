import 'package:flutter/material.dart';
import 'package:shoes_app/pages/dashboard_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: const Color(0xfffdf2e1),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 35,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Start a",
                        style: TextStyle(fontSize: 65),
                      ),
                      const Text(
                        "new life in",
                        style: TextStyle(fontSize: 65),
                      ),
                      const Text.rich(
                        TextSpan(
                          style: TextStyle(fontSize: 65),
                          children: [
                            TextSpan(text: "the "),
                            TextSpan(
                              text: "world",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "with us",
                        style: TextStyle(fontSize: 65),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Container(
                              color: Colors.grey,
                              child: Image.asset(
                                "assets/images/shoes4.png",
                                width: 200,
                                height: 300,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (_) => const DashboardPage(),
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Started",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(Icons.arrow_forward),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 35,
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(150),
                          child: Container(
                            color: Colors.grey,
                            child: Image.asset(
                              "assets/images/shoes5.png",
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(150),
                          child: Container(
                            color: Colors.grey,
                            child: Image.asset(
                              "assets/images/shoes7.png",
                              width: 150,
                              height: 100,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
