import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/weather_repository.dart';

class GetWeatherByCountryName {
  final WeatherRepository repository;

  GetWeatherByCountryName(this.repository);

  Future<Weather> execute(String cityName)async{
    return await repository.getWeatherByCityName(cityName);
  }
  
}