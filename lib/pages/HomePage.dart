import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Home Page New 2',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
