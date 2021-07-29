import 'package:flutter/material.dart';

class SharedAppBar extends AppBar {
  SharedAppBar({
    required String title,
    bool automaticallyImplyLeading = true,
    List<Widget>? actions,
    IconThemeData? iconTheme,
  }) : super(
          automaticallyImplyLeading: automaticallyImplyLeading,
          title: Text(title, style: const TextStyle(color: Colors.white)),
          actions: actions,
          iconTheme: iconTheme,
        );
}
