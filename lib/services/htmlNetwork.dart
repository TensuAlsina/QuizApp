import 'package:http/http.dart' as http;
import 'package:quizapp/model/html_model.dart';

class HtmlNetworkHelper {
  static getHtmlQuestion() async {
    var uri =
        "https://quizapi.io/api/v1/questions?apiKey=ZaBrXZW0nMGLpVZckremWv4sZW02lv2e2P8k3oq3&limit=20";

    var response = await http.get(Uri.parse(uri));

    if (response.statusCode == 200) {
      return htmlFromJson(response.body);
    } else {
      return null;
    }
  }
}
