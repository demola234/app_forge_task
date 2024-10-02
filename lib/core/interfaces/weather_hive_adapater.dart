import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:weather_forecast/feature/weather/data/models/weather_model.dart';

@HiveType(typeId: 0) // Assign unique typeId to each class
class WeatherModel extends Equatable {
  @HiveField(0)
  final Coord? coord;

  @HiveField(1)
  final List<Weather>? weather;

  @HiveField(2)
  final String? base;

  @HiveField(3)
  final Main? main;

  @HiveField(4)
  final int? visibility;

  @HiveField(5)
  final Wind? wind;

  @HiveField(6)
  final Rain? rain;

  @HiveField(7)
  final Clouds? clouds;

  @HiveField(8)
  final int? dt;

  @HiveField(9)
  final Sys? sys;

  @HiveField(10)
  final int? timezone;

  @HiveField(11)
  final int? id;

  @HiveField(12)
  final String? name;

  @HiveField(13)
  final int? cod;

  WeatherModel({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.rain,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  factory WeatherModel.fromMap(Map<String, dynamic> json) => WeatherModel(
        coord: json["coord"] != null ? Coord.fromMap(json["coord"]) : null,
        weather: json["weather"] != null
            ? List<Weather>.from(json["weather"].map((x) => Weather.fromMap(x)))
            : null,
        base: json["base"],
        main: json["main"] != null ? Main.fromMap(json["main"]) : null,
        visibility: json["visibility"],
        wind: json["wind"] != null ? Wind.fromMap(json["wind"]) : null,
        rain: json["rain"] != null ? Rain.fromMap(json["rain"]) : null,
        clouds: json["clouds"] != null ? Clouds.fromMap(json["clouds"]) : null,
        dt: json["dt"],
        sys: json["sys"] != null ? Sys.fromMap(json["sys"]) : null,
        timezone: json["timezone"],
        id: json["id"],
        name: json["name"],
        cod: json["cod"],
      );

  @override
  List<Object?> get props => [
        coord,
        weather,
        base,
        main,
        visibility,
        wind,
        rain,
        clouds,
        dt,
        sys,
        timezone,
        id,
        name,
        cod,
      ];
}

@HiveType(typeId: 1)
class Clouds extends Equatable {
  @HiveField(0)
  final int? all;

  Clouds({this.all});

  factory Clouds.fromMap(Map<String, dynamic> json) => Clouds(
        all: json["all"],
      );

  @override
  List<Object?> get props => [all];
}

@HiveType(typeId: 2)
class Coord extends Equatable {
  @HiveField(0)
  final double? lon;

  @HiveField(1)
  final double? lat;

  Coord({this.lon, this.lat});

  factory Coord.fromMap(Map<String, dynamic> json) => Coord(
        lon: json["lon"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
      );

  @override
  List<Object?> get props => [lon, lat];
}

@HiveType(typeId: 3)
class Main extends Equatable {
  @HiveField(0)
  final double? temp;

  @HiveField(1)
  final double? feelsLike;

  @HiveField(2)
  final double? tempMin;

  @HiveField(3)
  final double? tempMax;

  @HiveField(4)
  final int? pressure;

  @HiveField(5)
  final int? humidity;

  @HiveField(6)
  final int? seaLevel;

  @HiveField(7)
  final int? grndLevel;

  Main({
    this.temp,
    this.feelsLike,
    this.tempMin,
    this.tempMax,
    this.pressure,
    this.humidity,
    this.seaLevel,
    this.grndLevel,
  });

  factory Main.fromMap(Map<String, dynamic> json) => Main(
        temp: json["temp"]?.toDouble(),
        feelsLike: json["feels_like"]?.toDouble(),
        tempMin: json["temp_min"]?.toDouble(),
        tempMax: json["temp_max"]?.toDouble(),
        pressure: json["pressure"],
        humidity: json["humidity"],
        seaLevel: json["sea_level"],
        grndLevel: json["grnd_level"],
      );

  @override
  List<Object?> get props => [
        temp,
        feelsLike,
        tempMin,
        tempMax,
        pressure,
        humidity,
        seaLevel,
        grndLevel,
      ];
}

// Repeat similar Hive annotations for other classes like `Rain`, `Sys`, `Weather`, `Wind`.
