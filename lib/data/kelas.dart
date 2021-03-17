import 'package:flutter/material.dart';

class Kelas {
  final fasl;
  final color;

  Kelas({
    this.fasl,
    this.color,
  });
}

List<Kelas> semuaKelas = [
  Kelas(
    fasl: "الفصل الأوّل",
    color: Colors.blue[900],
  ),
  Kelas(
    fasl: "الفصل االثان",
    color: Colors.green[900],
  ),
  Kelas(
    fasl: "الفصل االثالث",
    color: Colors.red,
  ),
  Kelas(
    fasl: "الفصل الرّبع",
    color: Colors.orange[800],
  ),
  Kelas(
    fasl: "الفصل االخامس",
    color: Colors.yellow,
  ),
];
