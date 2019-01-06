# Desktop Launcher

Flutter Desktop Mac OS Launcher

## Getting Started

- Download this repository
- Extract zip archive
- Copy `Flutter.app` and `build_run.sh` to your project
- Modify your `main.dart` add target platform to `Fuchsia`

  ```java
  import 'package:flutter/foundation.dart'
      show debugDefaultTargetPlatformOverride; //for desktop embedder

  void main() {
  debugDefaultTargetPlatformOverride =
      TargetPlatform.fuchsia; //for desktop embedder
  runApp(MyApp());
  }
  ```

- Build flutter bundle inside your project `flutter build bundle`
- Run `Flutter.app`
