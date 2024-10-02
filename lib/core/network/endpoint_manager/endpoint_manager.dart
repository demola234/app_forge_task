import 'package:flutter_dotenv/flutter_dotenv.dart';

class EndpointManager {
  static final EndpointManager _instance = EndpointManager._internal();

  //! [Factory ConstConstructor, use the factory keyword when you need the ConstConstructor to not create a new object each time.]
  factory EndpointManager() => _instance;

  EndpointManager._internal();

  static String baseUrl = dotenv.env['BASE_URL']!;

  //! GetWeatherUrl

  static String getWeatherUrl = 'https://$baseUrl/weather';
}
