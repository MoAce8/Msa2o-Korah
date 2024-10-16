import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff3e5465);

///////////////////////////////////////////////////////////

double screenWidth(context) {
  return MediaQuery.sizeOf(context).width;
}

double screenHeight(context) {
  return MediaQuery.sizeOf(context).height;
}

double keyboardHeight(context) {
  return MediaQuery.of(context).viewInsets.bottom;
}

///////////////////////////////////////////////////////////

