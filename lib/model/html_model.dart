// To parse this JSON data, do
//
//     final html = htmlFromJson(jsonString);

// ignore_for_file: prefer_if_null_operators

import 'dart:convert';

List<Html> htmlFromJson(String str) =>
    List<Html>.from(json.decode(str).map((x) => Html.fromJson(x)));

String htmlToJson(List<Html> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Html {
  Html({
    this.id,
    this.question,
    this.description,
    this.answers,
    this.multipleCorrectAnswers,
    this.correctAnswers,
    this.correctAnswer,
    this.explanation,
    this.tip,
    this.tags,
    this.category,
    this.difficulty,
  });

  final int? id;
  final String? question;
  final dynamic? description;
  final Answers? answers;
  final String? multipleCorrectAnswers;
  final CorrectAnswers? correctAnswers;
  final String? correctAnswer;
  final String? explanation;
  final dynamic? tip;
  final List<Tag>? tags;
  final String? category;
  final String? difficulty;

  factory Html.fromJson(Map<String, dynamic> json) => Html(
        id: json["id"] == null ? null : json["id"],
        question: json["question"] == null ? null : json["question"],
        description: json["description"],
        answers:
            json["answers"] == null ? null : Answers.fromJson(json["answers"]),
        multipleCorrectAnswers: json["multiple_correct_answers"] == null
            ? null
            : json["multiple_correct_answers"],
        correctAnswers: json["correct_answers"] == null
            ? null
            : CorrectAnswers.fromJson(json["correct_answers"]),
        correctAnswer:
            json["correct_answer"] == null ? null : json["correct_answer"],
        explanation: json["explanation"] == null ? null : json["explanation"],
        tip: json["tip"],
        tags: json["tags"] == null
            ? null
            : List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        category: json["category"] == null ? null : json["category"],
        difficulty: json["difficulty"] == null ? null : json["difficulty"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "question": question == null ? null : question,
        "description": description,
        "answers": answers == null ? null : answers!.toJson(),
        "multiple_correct_answers":
            multipleCorrectAnswers == null ? null : multipleCorrectAnswers,
        "correct_answers":
            correctAnswers == null ? null : correctAnswers!.toJson(),
        "correct_answer": correctAnswer == null ? null : correctAnswer,
        "explanation": explanation == null ? null : explanation,
        "tip": tip,
        "tags": tags == null
            ? null
            : List<dynamic>.from(tags!.map((x) => x.toJson())),
        "category": category == null ? null : category,
        "difficulty": difficulty == null ? null : difficulty,
      };
}

class Answers {
  Answers({
    this.answerA,
    this.answerB,
    this.answerC,
    this.answerD,
    this.answerE,
    this.answerF,
  });

  final String? answerA;
  final String? answerB;
  final String? answerC;
  final String? answerD;
  final String? answerE;
  final String? answerF;

  factory Answers.fromJson(Map<String, dynamic> json) => Answers(
        answerA: json["answer_a"] == null ? null : json["answer_a"],
        answerB: json["answer_b"] == null ? null : json["answer_b"],
        answerC: json["answer_c"] == null ? null : json["answer_c"],
        answerD: json["answer_d"] == null ? null : json["answer_d"],
        answerE: json["answer_e"] == null ? null : json["answer_e"],
        answerF: json["answer_f"] == null ? null : json["answer_f"],
      );

  Map<String, dynamic> toJson() => {
        "answer_a": answerA == null ? null : answerA,
        "answer_b": answerB == null ? null : answerB,
        "answer_c": answerC == null ? null : answerC,
        "answer_d": answerD == null ? null : answerD,
        "answer_e": answerE == null ? null : answerE,
        "answer_f": answerF == null ? null : answerF,
      };
}

class CorrectAnswers {
  CorrectAnswers({
    this.answerACorrect,
    this.answerBCorrect,
    this.answerCCorrect,
    this.answerDCorrect,
    this.answerECorrect,
    this.answerFCorrect,
  });

  final String? answerACorrect;
  final String? answerBCorrect;
  final String? answerCCorrect;
  final String? answerDCorrect;
  final String? answerECorrect;
  final String? answerFCorrect;

  factory CorrectAnswers.fromJson(Map<String, dynamic> json) => CorrectAnswers(
        answerACorrect:
            json["answer_a_correct"] == null ? null : json["answer_a_correct"],
        answerBCorrect:
            json["answer_b_correct"] == null ? null : json["answer_b_correct"],
        answerCCorrect:
            json["answer_c_correct"] == null ? null : json["answer_c_correct"],
        answerDCorrect:
            json["answer_d_correct"] == null ? null : json["answer_d_correct"],
        answerECorrect:
            json["answer_e_correct"] == null ? null : json["answer_e_correct"],
        answerFCorrect:
            json["answer_f_correct"] == null ? null : json["answer_f_correct"],
      );

  Map<String, dynamic> toJson() => {
        "answer_a_correct": answerACorrect == null ? null : answerACorrect,
        "answer_b_correct": answerBCorrect == null ? null : answerBCorrect,
        "answer_c_correct": answerCCorrect == null ? null : answerCCorrect,
        "answer_d_correct": answerDCorrect == null ? null : answerDCorrect,
        "answer_e_correct": answerECorrect == null ? null : answerECorrect,
        "answer_f_correct": answerFCorrect == null ? null : answerFCorrect,
      };
}

class Tag {
  Tag({
    this.name,
  });

  final String? name;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
      };
}
