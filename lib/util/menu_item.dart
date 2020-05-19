import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuItem {
  IconData icon;
  double iconSize;
  String label;

  MenuItem({this.icon, this.iconSize, this.label});

  static List<MenuItem> getItens() {
    return [
      MenuItem(icon: FontAwesomeIcons.weightHanging, iconSize: 36, label: 'Massa'),
      MenuItem(icon: FontAwesomeIcons.ruler, iconSize: 36, label: 'Comprimento'),
      MenuItem(icon: FontAwesomeIcons.car, iconSize: 36, label: 'Velocidade'),
      MenuItem(icon: FontAwesomeIcons.gasPump, iconSize: 36, label: 'Combustível'),
      MenuItem(icon: FontAwesomeIcons.moneyBill, iconSize: 36, label: 'Moeda'),
      MenuItem(icon: FontAwesomeIcons.cookieBite, iconSize: 36, label: 'Cozinha'),
      MenuItem(icon: FontAwesomeIcons.chartArea, iconSize: 36, label: 'Área'),
      MenuItem(icon: FontAwesomeIcons.glassMartiniAlt, iconSize: 36, label: 'Volume'),
      MenuItem(icon: FontAwesomeIcons.temperatureHigh, iconSize: 36, label: 'Temperatura'),
      MenuItem(icon: FontAwesomeIcons.draftingCompass, iconSize: 36, label: 'Ângulo'),
      MenuItem(icon: FontAwesomeIcons.water, iconSize: 36, label: 'Pressão'),
      MenuItem(icon: FontAwesomeIcons.handRock, iconSize: 36, label: 'Força'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Torque'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Som'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Densidade'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Inércia'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Velocidade Ângular'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Aceleração'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Viscosidade'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Fluxo'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Concentração'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Permeabilidade'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Tensão Superficial'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Solução'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Potência'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Corrente'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Energia'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Resistência'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Capacitância'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Condutância'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Indutância'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Carga'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Condutividade'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Potencial'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Armazenamento'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Resolução'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Luminescência'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Frequência'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Iluminação'),
      MenuItem(icon: Icons.device_unknown, iconSize: 36, label: 'Tempo'),
    ];
  }
}
