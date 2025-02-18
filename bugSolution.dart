```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Check if jsonData is a list before casting
        if (jsonData is List) {
          final dataList = jsonData.cast<Map<String, dynamic>>();
          print(dataList);
        } else {
          print('Error: Invalid JSON format. Expected a list.');
        }
      } on FormatException catch (e) {
        print('Error: Invalid JSON format: $e');
      } 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```