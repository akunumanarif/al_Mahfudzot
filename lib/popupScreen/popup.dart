import 'package:flutter/material.dart';

class IconsMenu {
  static const items = <IconMenu>[
    info,
    // share,
  ];

  static const info = IconMenu(
    text: 'App Info',
    icon: Icons.announcement,
  );

  // static const share = IconMenu(
  //   text: 'Share',
  //   icon: Icons.share,
  // );
}

class IconMenu {
  final String text;
  final IconData icon;

  const IconMenu({
    @required this.text,
    @required this.icon,
  });
}
