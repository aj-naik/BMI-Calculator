import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor customColor = const MaterialColor(
    0xff0a0e21, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff090d1e), //10%
      100: const Color(0xff080b1a), //20%
      200: const Color(0xff070a17), //30%
      300: const Color(0xff060814), //40%
      400: const Color(0xff050711), //50%
      500: const Color(0xff04060d), //60%
      600: const Color(0xff03040a), //70%
      700: const Color(0xff020307), //80%
      800: const Color(0xff010103), //90%
      900: const Color(0xff000000), //100%
    },
  );
}
