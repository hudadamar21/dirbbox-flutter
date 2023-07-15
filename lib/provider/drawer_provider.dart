import 'package:flutter/foundation.dart';

class DrawerProvider with ChangeNotifier, DiagnosticableTreeMixin {
  String _currentScreen = "Home";

  String get currentScreen => _currentScreen;

  void changeCurrentScreen(String value) {
    _currentScreen = value;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('currentScreen', currentScreen));
  }
}
