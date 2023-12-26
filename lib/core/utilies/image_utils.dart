import 'package:flutter/cupertino.dart';

ImageProvider getImage(String name) {
  ImageProvider icon = const AssetImage('assets/images/back.png');

  switch (name) {
    case 'back':
      icon = const AssetImage('assets/images/back.png');
      break;
    case 'cardio':
      icon = const AssetImage('assets/images/cardio.png');
      break;
    case 'chest':
      icon = const AssetImage('assets/images/chest.png');
      break;
    case 'lower arms':
      icon = const AssetImage('assets/images/bras2.png');
      break;
    case 'lower legs':
      icon = const AssetImage('assets/images/jambe.png');
      break;
    case 'neck':
      icon = const AssetImage('assets/images/back.png');
      break;
    case 'shoulders':
      icon = const AssetImage('assets/images/shoulders.png');
      break;
    case 'upper arms':
      icon = const AssetImage('assets/images/bras.png');
      break;
    case 'upper legs':
      icon = const AssetImage('assets/images/jambe.png');
      break;
    case 'waist':
      icon = const AssetImage('assets/images/waist.png');
      break;
  }

  return icon;
}
