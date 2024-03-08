import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchWeatherData(String city, String apiKey) async {
  final String apiUrl = 'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';

  try {
   
    http.Response response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
   
      Map<String, dynamic> weatherData = jsonDecode(response.body);
      return weatherData;
    } else {
      throw Exception('Failed to fetch weather data: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Error while fetching weather data: $e');
  }
}

void main() async {
  String city = 'New York';
  String apiKey = 'YOUR_API_KEY'; 

  try {
   
    print('Fetching weather data for $city...');
    Map<String, dynamic> weatherData = await fetchWeatherData(city, apiKey);

    double temperature = weatherData['main']['temp'];
    String weatherDescription = weatherData['weather'][0]['description'];

    print('Current temperature in $city: $temperature°C');
    print('Weather conditions: $weatherDescription');
  } catch (e) {
    print('Error: $e');
  }
}
