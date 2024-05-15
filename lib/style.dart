// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const LargeTextSize = 24.0;
const MedTextSize = 18.0;
const SmallTextSize = 16.0;

const AppBarStyle = TextStyle(
  //fontFamily: "Montserrat",
  fontWeight: FontWeight.bold,
  fontSize: MedTextSize,
  color: Colors.white,
  overflow: TextOverflow.visible,
);
const TitleTextStyle = TextStyle(
  //fontFamily: "Montserrat",
  fontWeight: FontWeight.bold,
  fontSize: LargeTextSize,
  color: Colors.black,
  overflow: TextOverflow.clip,
);
const Body1Style = TextStyle(
  //fontFamily: "Montserrat",
  //fontWeight: FontWeight.bold,
  fontSize: SmallTextSize,
  color: Colors.black,
  overflow: TextOverflow.visible,
);

const ScrollText = TextStyle(
  fontSize: MedTextSize,
  color: Colors.black,
  overflow: TextOverflow.visible,
);

final ItemTitleText = TextStyle(
  fontSize: 14,
  color: Colors.grey[100],
);

final ItemText = TextStyle(
    fontSize: 16, color: Colors.grey[100], fontWeight: FontWeight.bold);
