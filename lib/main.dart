import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import "package:flutter_app/pages/splash.dart";
import "package:flutter_app/configs/config.dart";

void main() {
    runApp(App());
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight
    ]);

}

class App extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: Config.APP_NAME,
            home: Splash()
        );
    }
}
