import '../entities/weather.dart';
//Contract
abstract class BaseWeatherRepository{
  Future<Weather> getWeatherByCityName(String cityName);
}