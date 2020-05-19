import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Destination {
  const Destination(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<Destination> allDestinations = <Destination>[
  Destination('Unidades', FontAwesomeIcons.thermometerThreeQuarters, Colors.orange),
  Destination('Ferramentas', FontAwesomeIcons.compass, Colors.purple),
  Destination('Finanças', FontAwesomeIcons.landmark, Colors.green),
  Destination('Matemática', FontAwesomeIcons.infinity, Colors.blue)
];