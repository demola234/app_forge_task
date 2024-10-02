import 'package:equatable/equatable.dart';
import 'package:weather_forecast/feature/weather/domain/entities/weather_entity.dart';

class WeatherModel extends Equatable {
  final Coord? coord;
  final List<Weather>?
      weather; // This should reference the entity Weather class
  final String? base;
  final Main? main;
  final int? visibility;
  final Wind? wind;
  final Rain? rain;
  final Clouds? clouds;
  final int? dt;
  final Sys? sys;
  final int? timezone;
  final int? id;
  final String? name;
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
            ? List<Weather>.from(json["weather"].map((x) =>
                Weather.fromMap(x))) // Ensure this refers to the entity Weather
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

  Map<String, dynamic> toMap() => {
        "coord": coord?.toMap(),
        "weather": weather != null
            ? List<dynamic>.from(weather!.map((x) =>
                x.toMap())) // Ensure this also refers to the entity Weather
            : null,
        "base": base,
        "main": main?.toMap(),
        "visibility": visibility,
        "wind": wind?.toMap(),
        "rain": rain?.toMap(),
        "clouds": clouds?.toMap(),
        "dt": dt,
        "sys": sys?.toMap(),
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
      };

  WeatherEntity toEntity() {
    return WeatherEntity(
      coord: coord,
      weather: weather,
      base: base,
      main: main,
      visibility: visibility,
      wind: wind,
      rain: rain,
      clouds: clouds,
      dt: dt,
      sys: sys,
      timezone: timezone,
      id: id,
      name: name,
      cod: cod,
    );
  }

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

class Clouds extends Equatable {
  final int? all;

  Clouds({this.all});

  factory Clouds.fromMap(Map<String, dynamic> json) => Clouds(
        all: json["all"],
      );

  Map<String, dynamic> toMap() => {
        "all": all,
      };

  @override
  List<Object?> get props => [all];
}

class Coord extends Equatable {
  final double? lon;
  final double? lat;

  Coord({this.lon, this.lat});

  factory Coord.fromMap(Map<String, dynamic> json) => Coord(
        lon: json["lon"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "lon": lon,
        "lat": lat,
      };

  @override
  List<Object?> get props => [lon, lat];
}

class Main extends Equatable {
  final double? temp;
  final double? feelsLike;
  final double? tempMin;
  final double? tempMax;
  final int? pressure;
  final int? humidity;
  final int? seaLevel;
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

  Map<String, dynamic> toMap() => {
        "temp": temp,
        "feels_like": feelsLike,
        "temp_min": tempMin,
        "temp_max": tempMax,
        "pressure": pressure,
        "humidity": humidity,
        "sea_level": seaLevel,
        "grnd_level": grndLevel,
      };

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

class Rain extends Equatable {
  final double? the1H;

  Rain({this.the1H});

  factory Rain.fromMap(Map<String, dynamic> json) => Rain(
        the1H: json["1h"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "1h": the1H,
      };

  @override
  List<Object?> get props => [the1H];
}

class Sys extends Equatable {
  final String? country;
  final int? sunrise;
  final int? sunset;

  Sys({this.country, this.sunrise, this.sunset});

  factory Sys.fromMap(Map<String, dynamic> json) => Sys(
        country: json["country"],
        sunrise: json["sunrise"],
        sunset: json["sunset"],
      );

  Map<String, dynamic> toMap() => {
        "country": country,
        "sunrise": sunrise,
        "sunset": sunset,
      };

  @override
  List<Object?> get props => [country, sunrise, sunset];
}

class Weather extends Equatable {
  final int? id;
  final String? main;
  final String? description;
  final String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  factory Weather.fromMap(Map<String, dynamic> json) => Weather(
        id: json["id"],
        main: json["main"],
        description: json["description"],
        icon: json["icon"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
      };

  @override
  List<Object?> get props => [id, main, description, icon];
}

class Wind extends Equatable {
  final double? speed;
  final int? deg;
  final double? gust;

  Wind({this.speed, this.deg, this.gust});

  factory Wind.fromMap(Map<String, dynamic> json) => Wind(
        speed: json["speed"]?.toDouble(),
        deg: json["deg"],
        gust: json["gust"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "speed": speed,
        "deg": deg,
        "gust": gust,
      };

  @override
  List<Object?> get props => [speed, deg, gust];
}
