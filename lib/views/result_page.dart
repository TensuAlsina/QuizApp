import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/constants/all_constants.dart';
import 'package:quizapp/views/home_page.dart';

class ResultPage extends StatelessWidget {
  final String scorr;
  const ResultPage({Key? key, required this.scorr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 21, 27),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Quiz Result"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 250, child: Image.asset("images/trophy.png")),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Congratulations!",
            style: TextStyle(
                color: MyConstants.textColor,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "YOUR SCORE",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 131, 127, 127)),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$scorr ",
                style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              const Text(
                "/ 20",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.indigo),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 8))),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Icon(Icons.share),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Share Results"),
                    ],
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 12))),
                  onPressed: () {
                    Get.offAll(() => MyHomePage());
                  },
                  child: const Text("Take New Quiz")),
            ],
          )
        ],
      ),
    );
  }
}
