import 'package:flutter/material.dart';
import 'package:flame/util.dart';
import 'package:flutter/services.dart';

import 'package:boxgame/box-game.dart';
import 'package:flutter/gestures.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);
  TapGestureRecognizer tapper = TapGestureRecognizer();


  BoxGame game = BoxGame();
  tapper.onTapDown = game.onTapDown;
  runApp(game.widget);
  flameUtil.addGestureRecognizer(tapper);

}