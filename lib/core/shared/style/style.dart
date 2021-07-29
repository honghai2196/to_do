import 'package:flutter/material.dart';

var sharedBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10),
  boxShadow: [
    BoxShadow(
      color: Color.fromRGBO(40, 134, 207, .2),
      blurRadius: 20.0,
      offset: Offset(0, 10),
    ),
  ],
);
