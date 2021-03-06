import 'location.dart';
import 'networking.dart';

const API_KEY = 'YOUR_API_URL';
const BASE_URL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future getLocationWeather() async {
    Location locationManager = Location();
    await locationManager.getLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '$BASE_URL?lat=${locationManager.latitude}&lon=${locationManager.longitude}&appid=$API_KEY&units=metric');

    return await networkHelper.getData();
  }

  Future getCityWeather(String city) async {
    NetworkHelper networkHelper =
        NetworkHelper('$BASE_URL?q=$city&appid=$API_KEY&units=metric');

    return await networkHelper.getData();
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}
