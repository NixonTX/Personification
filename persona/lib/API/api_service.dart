import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String baseUrl = 'http://127.0.0.1:8000/api';

  Future<List<dynamic>> fetchAssessments() async {
    final response = await http.get(Uri.parse('$baseUrl/assessments/'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load assessments');
    }
  }
}
