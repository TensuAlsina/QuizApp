import 'package:flutter/material.dart';
import 'package:quizapp/constants/all_constants.dart';
import 'package:quizapp/controllers/html_controllers.dart';
import 'package:get/get.dart';
import 'package:quizapp/views/home_page.dart';
import 'package:quizapp/views/result_page.dart';

class HtmlPage extends StatelessWidget {
  HtmlPage({Key? key}) : super(key: key);

  final HtmlQuestionControllers _htmlQuestionControllers =
      Get.put(HtmlQuestionControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 21, 27),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Obx(() {
                  if (_htmlQuestionControllers.isLoaded.value) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "HTML QUIZ",
                          style: TextStyle(
                              color: Color.fromARGB(255, 161, 149, 149),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Question ${_htmlQuestionControllers.count.value + 1}/${_htmlQuestionControllers.allhtmlQuestions.length}",
                          style: TextStyle(
                              color: MyConstants.textColor, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Obx(() => Text(
                              _htmlQuestionControllers
                                  .allhtmlQuestions[
                                      _htmlQuestionControllers.count.value]
                                  .question,
                              style: TextStyle(
                                  color: MyConstants.textColor,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )),
                        const SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              _htmlQuestionControllers.checkAnswer(
                                  _htmlQuestionControllers.allhtmlQuestions[
                                      _htmlQuestionControllers.count.value],
                                  0);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.teal,
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text(
                                "${_htmlQuestionControllers.allhtmlQuestions[_htmlQuestionControllers.count.value].answers.answerA}",
                                style: TextStyle(
                                    color: MyConstants.textColor, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              _htmlQuestionControllers.checkAnswer(
                                  _htmlQuestionControllers.allhtmlQuestions[
                                      _htmlQuestionControllers.count.value],
                                  1);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.teal,
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text(
                                "${_htmlQuestionControllers.allhtmlQuestions[_htmlQuestionControllers.count.value].answers.answerB}",
                                style: TextStyle(
                                    color: MyConstants.textColor, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        _htmlQuestionControllers
                                    .allhtmlQuestions[
                                        _htmlQuestionControllers.count.value]
                                    .answers
                                    .answerC ==
                                null
                            ? const SizedBox()
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    _htmlQuestionControllers.checkAnswer(
                                        _htmlQuestionControllers
                                                .allhtmlQuestions[
                                            _htmlQuestionControllers
                                                .count.value],
                                        2);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.teal,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Obx(() => Text(
                                          "${_htmlQuestionControllers.allhtmlQuestions[_htmlQuestionControllers.count.value].answers.answerC}",
                                          style: TextStyle(
                                              color: MyConstants.textColor,
                                              fontSize: 18),
                                        )),
                                  ),
                                ),
                              ),
                        _htmlQuestionControllers
                                    .allhtmlQuestions[
                                        _htmlQuestionControllers.count.value]
                                    .answers
                                    .answerD ==
                                null
                            ? const SizedBox()
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    _htmlQuestionControllers.checkAnswer(
                                        _htmlQuestionControllers
                                                .allhtmlQuestions[
                                            _htmlQuestionControllers
                                                .count.value],
                                        3);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.teal,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Text(
                                      "${_htmlQuestionControllers.allhtmlQuestions[_htmlQuestionControllers.count.value].answers.answerD}",
                                      style: TextStyle(
                                          color: MyConstants.textColor,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment:
                              _htmlQuestionControllers.count.value == 19
                                  ? MainAxisAlignment.spaceAround
                                  : MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.indigo),
                                    padding: MaterialStateProperty.all(
                                        const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 8))),
                                onPressed: () {
                                  Get.offAll(() => MyHomePage());
                                },
                                child: Row(
                                  children: const [
                                    Icon(Icons.power_settings_new),
                                    Text("Quit Quiz"),
                                  ],
                                )),
                            _htmlQuestionControllers.count.value == 19
                                ? ElevatedButton(
                                    onPressed: () {
                                      Get.to(() => ResultPage(
                                          scorr: _htmlQuestionControllers
                                              .correctAnswer.value
                                              .toString()));
                                    },
                                    child: const Text("See Result"))
                                : const Text("")
                          ],
                        )
                      ],
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }))),
      ),
    );
  }
}
