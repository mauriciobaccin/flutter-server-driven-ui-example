import 'package:http/http.dart' as http;
import '../models/SignUpWidgets.dart';

class SignUpService {
  static Future<List<SignUpWidgets>> getSignUpWidgets() async {
    var client = http.Client();
    var response = await client.get(Uri.parse('http://localhost:3000'));

    if (response.statusCode == 200) {
      var json = response.body;
      return wsFromJson(json);
    } else {
      return [SignUpWidgets(type: 'FlutterLogo', size: 100)];
    }
  }
}
