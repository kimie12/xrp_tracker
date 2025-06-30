import 'dart:convert';
import 'package:http/http.dart' as http;

class XrpService {
  static const String url = 'https://api.mypapit.net/crypto/XRPMYR.json';

  static Future<double?> getXrpPrice() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return double.tryParse(data['last_trade'].toString());
      } else {
        print('Error fetching XRP: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Exception fetching XRP: $e');
      return null;
    }
  }
}

