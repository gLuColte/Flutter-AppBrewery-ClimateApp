import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'location_screen.dart';
import 'package:clima/services/weather.dart';
// Async vs Sync
// Some code may take a long time to execute/load
// Sync - top to bottom
// Async - Threading
// Life Cylce - initState (initial), Build (), deactivate()
// .parse changes data type
// Error Catch via try and catch
// Widget build(BuildContext context) {
//     String myMargin = '15';
//     double myMarginAsDouble;
//     try {
//       double myMarginAsDouble = double.parse(myMargin);
//     } catch (exception) {
//       print(exception);
//     }
//     return Scaffold(
//       body: Container(
//         color: Colors.red,
//         margin: EdgeInsets.all(myMarginAsDouble ?? 30.0), // ?? - check if it is ?? (NULL Aware Operator)
//       ),
//     );
//   }
// API and other


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(locationWeather: weatherData,);
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce( // adding loading screen
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
