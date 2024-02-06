# flutter_zoom_checker

[![pub package](https://img.shields.io/pub/v/flutter_zoom_checker.svg)](https://pub.dev/packages/flutter_zoom_checker)

A plugin to check if the display is zoomed

<p align="center">
 <img height=500 src="https://github.com/binSaed/flutter_cached_pdfview/assets/33700292/180de52a-0a47-4942-952b-654f392b2aa5">


To use this plugin, add `flutter_zoom_checker` as a [dependency in your pubspec.yaml file](https://flutter.dev/platform-plugins/).

### Example

<?code-excerpt "lib/basic.dart (basic-example)"?>
```dart
import 'package:flutter_zoom_checker/flutter_zoom_checker.dart';

Future<bool> isZoomed() {
  return FlutterZoomChecker.isZoomed();
}
```

### Developer

- [Abdelrahman Saed](https://github.com/binSaed)
