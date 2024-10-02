import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:weather_forecast/core/error/error.dart';
import 'package:weather_forecast/feature/weather/data/models/weather_model.dart';

abstract class WeatherLocalDatasource {
  Future<WeatherModel> getLastWeather();
  Future<void> cacheWeather(WeatherModel weatherToCache);
}

class IWeatherLocalDatasource extends WeatherLocalDatasource {
  final HiveInterface hiveInterface;
  static const String _weatherBox = 'weatherBox';
  static const String _cachedWeatherKey = 'cachedWeather';

  IWeatherLocalDatasource(this.hiveInterface);

  @override
  Future<void> cacheWeather(WeatherModel weatherToCache) async {
    final box = await hiveInterface.openBox(_weatherBox);
    debugPrint("[Caching Weather in Hive for Offline Support]...");

    await box.put(_cachedWeatherKey, weatherToCache.toMap());

    debugPrint("[Weather Cached in Hive, Offline Support Updated]");
    await box.close();
  }

  @override
  Future<WeatherModel> getLastWeather() async {
    final box = await hiveInterface.openBox(_weatherBox);

    final cachedWeatherJson = box.get(_cachedWeatherKey);

    if (cachedWeatherJson != null) {
      debugPrint("[Retrieved Cached Weather from Hive]");
      await box.close();

      return WeatherModel.fromMap(cachedWeatherJson);
    } else {
      await box.close();
      throw CacheException('No weather data found in cache');
    }
  }
}
