import 'package:get/get.dart';
import 'package:quizapp/model/html_model.dart';
import 'package:quizapp/services/htmlNetwork.dart';

class HtmlQuestionControllers extends GetxController {
  RxList allhtmlQuestions = [].obs;
  var count = 0.obs;
  var correctAnswer = 0.obs;
  var isLoaded = false.obs;

  @override
  void onInit() {
    super.onInit();
    getHtmlQuestion();
  }

  void getHtmlQuestion() async {
    var questions = await HtmlNetworkHelper.getHtmlQuestion();
    if (!(questions == null)) {
      isLoaded.toggle();

      allhtmlQuestions.value = questions;
    }
  }

  checkAnswer(Html html, int index) {
    List<String> answers = ["answer_a", "answer_b", "answer_c", "answer_d"];
    if (html.correctAnswer == answers[index] &&
        count.value != allhtmlQuestions.length - 1) {
      count++;
      correctAnswer++;
    } else if (html.correctAnswer != answers[index] &&
        count.value != allhtmlQuestions.length - 1) {
      count++;
    }
  }
}
