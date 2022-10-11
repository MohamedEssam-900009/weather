import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../core/utils/constants.dart';
import '../models/weather_model.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatheByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatheByCountryName(String countryName) async {
    try {
      var response = await Dio().get(
          '${AppConstants.baseUrl}/weather?q=$countryName&appid=${AppConstants.appKey}');
      print(response);
      return WeatherModel.fromJson(json.decode(response.data));
    } catch (e) {
      print(e);
      return null;
    }
  }
}
