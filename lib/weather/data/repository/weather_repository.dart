// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weather/weather/data/datasource/remote_datasource.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  RemoteDataSource remoteDataSource;

  WeatherRepository(this.remoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String countryName)async {
  return (await  remoteDataSource.getWeatheByCountryName(countryName))!;
  }
}
