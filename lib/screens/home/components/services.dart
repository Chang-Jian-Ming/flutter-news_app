import 'package:http/http.dart' as http;
import 'nytimes.dart';
import '../../../keys.dart';

class Services {
  static const String url = "https://api.nytimes.com/svc/topstories/v2/home.json?api-key=" + nytimesApiKey;

  static Future<Nytimes> getResults() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final Nytimes results = nytimesFromJson(response.body);
        return results;
      }
    } catch (e) {
    }
  }
}