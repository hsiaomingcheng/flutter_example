import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../screens/location_screen.dart';
import '../services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getWeatherData();

    //取得資料後做換頁動作
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        //換頁時將氣象資料一併帶入
        return LocationScreen(
          locationWeather: weatherData,
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          //這裡會一直做doubleBounce的動畫動作，直到換頁
          //因為下一頁並沒有返回的動作，所以其實這一頁的動畫一直在做動，只是被location_screen給擋住看不到而已
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
